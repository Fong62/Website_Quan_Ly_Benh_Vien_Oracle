-- 1. Tạo package để quản lý mã hóa/giải mã
CREATE OR REPLACE PACKAGE CryptoUtils AS
    FUNCTION EncryptData(p_data VARCHAR2, p_key VARCHAR2) RETURN RAW;
    FUNCTION DecryptData(p_encrypted RAW, p_key VARCHAR2) RETURN VARCHAR2;
END CryptoUtils;
/

CREATE OR REPLACE PACKAGE BODY CryptoUtils AS
    g_encryption_type PLS_INTEGER := DBMS_CRYPTO.ENCRYPT_AES256
                                    + DBMS_CRYPTO.CHAIN_CBC
                                    + DBMS_CRYPTO.PAD_PKCS5;
    
    FUNCTION EncryptData(p_data VARCHAR2, p_key VARCHAR2) RETURN RAW IS
        l_key_raw RAW(32);
        l_iv RAW(16) := UTL_RAW.CAST_TO_RAW('1234567890123456'); 
        l_data_raw RAW(32767) := UTL_I18N.STRING_TO_RAW(p_data, 'AL32UTF8');
        l_encrypted RAW(32767);
        
        v_padded_key VARCHAR2(256);
    BEGIN
        v_padded_key := RPAD(p_key, 64, '#');
        
        l_key_raw := DBMS_CRYPTO.HASH(
            UTL_I18N.STRING_TO_RAW(v_padded_key, 'AL32UTF8'),
            DBMS_CRYPTO.HASH_SH256
        );
        
        l_encrypted := DBMS_CRYPTO.ENCRYPT(
            src => l_data_raw,
            typ => g_encryption_type,
            key => l_key_raw,
            iv => l_iv
        );
        
        RETURN l_encrypted;
    END EncryptData;
    
    FUNCTION DecryptData(p_encrypted RAW, p_key VARCHAR2) RETURN VARCHAR2 IS
        l_key_raw RAW(32);
        l_iv RAW(16) := UTL_RAW.CAST_TO_RAW('1234567890123456');
        l_decrypted RAW(32767);

        v_padded_key VARCHAR2(256);
    BEGIN
        v_padded_key := RPAD(p_key, 64, '#');
        
        l_key_raw := DBMS_CRYPTO.HASH(
            UTL_I18N.STRING_TO_RAW(v_padded_key, 'AL32UTF8'),
            DBMS_CRYPTO.HASH_SH256
        );
        
        l_decrypted := DBMS_CRYPTO.DECRYPT(
            src => p_encrypted,
            typ => g_encryption_type,
            key => l_key_raw,
            iv => l_iv
        );
        
        RETURN UTL_I18N.RAW_TO_CHAR(l_decrypted, 'AL32UTF8');
    END DecryptData;
END CryptoUtils;
/

--Chạy trên cdb
GRANT EXECUTE ON DBMS_CRYPTO TO C##VAULT;
GRANT EXECUTE ON UTL_I18N TO C##VAULT;

-- 2. Thay đổi kiểu dữ liệu cho các cột mã hóa
ALTER TABLE Luong MODIFY LuongCoBan RAW(2000);
ALTER TABLE TaiKhoan MODIFY MK RAW(2000);
ALTER TABLE Luong_Archive MODIFY LuongCoBan RAW(2000);

DESCRIBE Luong;
DESCRIBE TaiKhoan;


-- 3. Procedure thêm lương với mã hóa
CREATE OR REPLACE PROCEDURE ThemLuong_MaHoa(
    p_MaLuong NVARCHAR2,
    p_MaNV NVARCHAR2,
    p_Thang NUMBER,
    p_Nam NUMBER,
    p_LuongCoBan NVARCHAR2,
    p_PhuCap NUMBER,
    p_NgayCong NUMBER,
    p_TongLuong NUMBER
)
AS
BEGIN
    INSERT INTO Luong (
        MaLuong, MaNV, Thang, Nam, LuongCoBan, PhuCap, NgayCong, TongLuong
    )
    VALUES (
        p_MaLuong,
        p_MaNV,
        p_Thang,
        p_Nam,
        CryptoUtils.EncryptData(p_LuongCoBan, p_MaNV),
        p_PhuCap,
        p_NgayCong,
        p_TongLuong
    );
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 4. Procedure cập nhật lương với mã hóa
CREATE OR REPLACE PROCEDURE sp_UpdateLuong_MaHoa(
    p_MaLuong NVARCHAR2,
    p_MaNV NVARCHAR2,
    p_Thang NUMBER,
    p_Nam NUMBER,
    p_LuongCoBan NVARCHAR2,
    p_PhuCap NUMBER,
    p_NgayCong NUMBER,
    p_TongLuong NUMBER
)
AS
BEGIN
    -- Lưu bản ghi cũ vào archive
    INSERT INTO Luong_Archive(
        MaLuong, MaNV, Thang, Nam, LuongCoBan, PhuCap, NgayCong, TongLuong, ArchiveDate, ActionType
    )
    SELECT
        MaLuong, MaNV, Thang, Nam, LuongCoBan, PhuCap, NgayCong, TongLuong, SYSTIMESTAMP, 'UPDATE'
    FROM Luong
    WHERE MaLuong = p_MaLuong;

    -- Cập nhật bản ghi mới
    UPDATE Luong
    SET
        MaNV = p_MaNV,
        Thang = p_Thang,
        Nam = p_Nam,
        LuongCoBan = CryptoUtils.EncryptData(p_LuongCoBan, p_MaNV),
        PhuCap = p_PhuCap,
        NgayCong = p_NgayCong,
        TongLuong = p_TongLuong
    WHERE MaLuong = p_MaLuong;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 5. Procedure xem lương giải mã
CREATE OR REPLACE PROCEDURE XemLuong_GiaiMa(
    p_MaNV NVARCHAR2
)
AS
BEGIN
    FOR rec IN (
        SELECT
            MaLuong,
            MaNV,
            Thang,
            Nam,
            CryptoUtils.DecryptData(LuongCoBan, MaNV) AS LuongCoBan,
            PhuCap,
            NgayCong,
            TongLuong
        FROM Luong
        WHERE MaNV = p_MaNV
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('MaLuong: ' || rec.MaLuong);
        DBMS_OUTPUT.PUT_LINE('LuongCoBan: ' || rec.LuongCoBan);
        -- Các trường khác...
    END LOOP;
END;
/

-- 6. Procedure tạo tài khoản với mã hóa
CREATE OR REPLACE PROCEDURE TaoTaiKhoan_MaHoa(
    p_MaTK NVARCHAR2,
    p_MaNV NVARCHAR2,
    p_TenDN NVARCHAR2,
    p_MatKhau NVARCHAR2,
    p_LoaiTK NVARCHAR2
)
AS
BEGIN
    INSERT INTO TaiKhoan (
        MaTK, MaNV, TenDN, MK, LoaiTK
    )
    VALUES (
        p_MaTK,
        p_MaNV,
        p_TenDN,
        CryptoUtils.EncryptData(p_MatKhau, p_MaNV),
        p_LoaiTK
    );
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 7. Procedure cập nhật tài khoản với mã hóa
CREATE OR REPLACE PROCEDURE sp_UpdateTaiKhoan_MaHoa(
    p_MaTK NVARCHAR2,
    p_MaNV NVARCHAR2,
    p_TenDN NVARCHAR2,
    p_MatKhau NVARCHAR2,
    p_LoaiTK NVARCHAR2
)
AS
BEGIN
    -- Lưu bản ghi cũ vào archive
    INSERT INTO TaiKhoan_Archive(
        MaTK, MaNV, TenDN, MK, LoaiTK, ArchiveDate, ActionType
    )
    SELECT 
        MaTK, MaNV, TenDN, MK, LoaiTK, SYSTIMESTAMP, 'UPDATE'
    FROM TaiKhoan
    WHERE MaTK = p_MaTK;

    -- Cập nhật bản ghi mới
    UPDATE TaiKhoan
    SET
        MaNV = p_MaNV,
        TenDN = p_TenDN,
        MK = CryptoUtils.EncryptData(p_MatKhau, p_MaNV),
        LoaiTK = p_LoaiTK
    WHERE MaTK = p_MaTK;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 8. Tạo các tài khoản mẫu
BEGIN
    TaoTaiKhoan_MaHoa('PBQLNS12', 'NV001', 'QuanLyNhanSu', '12345678', 'QuanLyNhanSu');
    TaoTaiKhoan_MaHoa('PBQLTV12', 'NV002', 'QuanLyTaiVu', '12345678', 'QuanLyTaiVu');
    TaoTaiKhoan_MaHoa('PBQLCM12', 'NV003', 'QuanLyChuyenMon', '12345678', 'QuanLyChuyenMon');
    TaoTaiKhoan_MaHoa('PBTT1234', 'NV004', 'TiepTan', '12345678', 'TiepTan');
    TaoTaiKhoan_MaHoa('PBBS1234', 'BS001', 'BacSi', '12345678', 'BacSi');
    TaoTaiKhoan_MaHoa('PBBS12345', 'BS002', 'BacSi', '12345678', 'BacSi');
    TaoTaiKhoan_MaHoa('PBBS123456', 'BS003', 'BacSi', '12345678', 'BacSi');
    TaoTaiKhoan_MaHoa('PBTV1234', 'NV005', 'TaiVu', '12345678', 'TaiVu');
    TaoTaiKhoan_MaHoa('PBKT1234', 'NV006', 'KeToan', '12345678', 'KeToan');
    TaoTaiKhoan_MaHoa('PBBT1234', 'NV007', 'BanThuoc', '12345678', 'BanThuoc');
    COMMIT;
END;