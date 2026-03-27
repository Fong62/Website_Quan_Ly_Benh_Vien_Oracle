-- 1. Procedure cập nhật nhân viên
CREATE OR REPLACE PROCEDURE sp_UpdateNhanVien(
    p_MaNV NVARCHAR2,
    p_HoTenNV NVARCHAR2,
    p_NgaySinh DATE,
    p_GioiTinh NVARCHAR2,
    p_DiaChi NVARCHAR2,
    p_SDT NVARCHAR2,
    p_MaPB NVARCHAR2
)
AS
BEGIN
    -- Lưu bản ghi cũ vào bảng archive
    INSERT INTO Archive_NhanVien (MaNV, HoTenNV, NgaySinh, GioiTinh, DiaChi, SDT, MaPB, ArchivedAt)
    SELECT MaNV, HoTenNV, NgaySinh, GioiTinh, DiaChi, SDT, MaPB, SYSTIMESTAMP
    FROM NhanVien
    WHERE MaNV = p_MaNV;

    -- Cập nhật thông tin mới
    UPDATE NhanVien
    SET HoTenNV = p_HoTenNV,
        NgaySinh = p_NgaySinh,
        GioiTinh = p_GioiTinh,
        DiaChi = p_DiaChi,
        SDT = p_SDT,
        MaPB = p_MaPB
    WHERE MaNV = p_MaNV;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 2. Procedure thêm nhân viên
CREATE OR REPLACE PROCEDURE Sp_AddNV(
    p_MaNV NVARCHAR2,
    p_HoTenNV NVARCHAR2,
    p_NgaySinh DATE,
    p_GioiTinh NVARCHAR2,
    p_DiaChi NVARCHAR2,
    p_SDT NVARCHAR2,
    p_MaPB NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    -- Kiểm tra mã nhân viên đã tồn tại chưa
    SELECT COUNT(*) INTO v_count FROM NhanVien WHERE MaNV = p_MaNV;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Mã nhân viên đã tồn tại.');
    END IF;

    -- Thêm mới nhân viên
    INSERT INTO NhanVien (MaNV, HoTenNV, NgaySinh, GioiTinh, DiaChi, SDT, MaPB)
    VALUES (p_MaNV, p_HoTenNV, p_NgaySinh, p_GioiTinh, p_DiaChi, p_SDT, p_MaPB);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 3. Procedure thêm bệnh nhân
CREATE OR REPLACE PROCEDURE Sp_AddBenhNhan(
    p_MaBN NVARCHAR2,
    p_HoTenBN NVARCHAR2,
    p_NgaySinh DATE,
    p_DiaChi NVARCHAR2,
    p_SDT NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM BenhNhan WHERE MaBN = p_MaBN;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Mã bệnh nhân đã tồn tại.');
    END IF;

    INSERT INTO BenhNhan (MaBN, HoTenBN, NgaySinh, DiaChi, SDT)
    VALUES (p_MaBN, p_HoTenBN, p_NgaySinh, p_DiaChi, p_SDT);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 4. Procedure thêm bác sĩ
CREATE OR REPLACE PROCEDURE Sp_AddBacSi(
    p_MaBS NVARCHAR2,
    p_TrinhDo NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM BacSi WHERE MaBS = p_MaBS;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Mã bác sĩ đã tồn tại.');
    END IF;

    INSERT INTO BacSi (MaBS, TrinhDo)
    VALUES (p_MaBS, p_TrinhDo);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 5. Procedure thêm phòng ban
CREATE OR REPLACE PROCEDURE Sp_AddPhongBan(
    p_MaPB NVARCHAR2,
    p_MaBP NVARCHAR2,
    p_TenPhongBan NVARCHAR2,
    p_MoTa NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM PhongBan WHERE MaPB = p_MaPB;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Mã phòng ban đã tồn tại.');
    END IF;

    INSERT INTO PhongBan (MaPB, MaBP, TenPhongBan, MoTa)
    VALUES (p_MaPB, p_MaBP, p_TenPhongBan, p_MoTa);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 6. Procedure thêm bộ phận
CREATE OR REPLACE PROCEDURE Sp_AddBoPhan(
    p_MaBP NVARCHAR2,
    p_TenBoPhan NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM BoPhan WHERE MaBP = p_MaBP;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20005, 'Mã bộ phận đã tồn tại.');
    END IF;

    INSERT INTO BoPhan (MaBP, TenBoPhan)
    VALUES (p_MaBP, p_TenBoPhan);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 7. Procedure thêm ca trực
CREATE OR REPLACE PROCEDURE Sp_AddCaTruc(
    p_MaCT NVARCHAR2,
    p_ThoiGianBT TIMESTAMP,
    p_ThoiGianKT TIMESTAMP,
    p_NVtruc NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM CaTruc WHERE MaCT = p_MaCT;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20006, 'Mã ca trực đã tồn tại.');
    END IF;

    INSERT INTO CaTruc (MaCT, ThoiGianBT, ThoiGianKT, NVtruc)
    VALUES (p_MaCT, p_ThoiGianBT, p_ThoiGianKT, p_NVtruc);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 8. Procedure thêm phiếu khám
CREATE OR REPLACE PROCEDURE Sp_AddPhieuKham(
    p_MaPK NVARCHAR2,
    p_TrieuChung NVARCHAR2,
    p_NgayKham DATE,
    p_NguoiKham NVARCHAR2,
    p_BacSi NVARCHAR2,
    p_MaSoKham NUMBER
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM PhieuKhamBenh WHERE MaPK = p_MaPK;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20007, 'Mã phiếu khám đã tồn tại.');
    END IF;

    INSERT INTO PhieuKhamBenh (MaPK, TrieuChung, NgayKham, NguoiKham, Bacsi, MaSoKham)
    VALUES (p_MaPK, p_TrieuChung, p_NgayKham, p_NguoiKham, p_BacSi, p_MaSoKham);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 9. Procedure thêm chi tiết phiếu khám
CREATE OR REPLACE PROCEDURE Sp_AddChiTietPhieuKham(
    p_MaPK NVARCHAR2,
    p_MaTT NVARCHAR2,
    p_SoTien NUMBER,
    p_TTThanhToan NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM ChiTietPhieuKham WHERE MaPK = p_MaPK AND MaTT = p_MaTT;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20008, 'Chi tiết phiếu khám đã tồn tại.');
    END IF;

    INSERT INTO ChiTietPhieuKham (MaPK, MaTT, SoTien, TTThanhToan)
    VALUES (p_MaPK, p_MaTT, p_SoTien, p_TTThanhToan);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 10. Procedure thêm thủ tục
CREATE OR REPLACE PROCEDURE Sp_AddThuTuc(
    p_MaThuTuc NVARCHAR2,
    p_TenTuc NVARCHAR2,
    p_DonGia NUMBER
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM ThuTuc WHERE MaThuTuc = p_MaThuTuc;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20009, 'Mã thủ tục đã tồn tại.');
    END IF;

    INSERT INTO ThuTuc (MaThuTuc, TenTuc, DonGia)
    VALUES (p_MaThuTuc, p_TenTuc, p_DonGia);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 11. Procedure thêm toa thuốc
CREATE OR REPLACE PROCEDURE Sp_AddToaThuoc(
    p_MaToaThuoc NVARCHAR2,
    p_MaBacSi NVARCHAR2,
    p_NgayKe DATE,
    p_TongTien NUMBER,
    p_MaPk NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM ToaThuoc WHERE MaToaThuoc = p_MaToaThuoc;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20010, 'Mã toa thuốc đã tồn tại.');
    END IF;

    INSERT INTO ToaThuoc (MaToaThuoc, MaBacSi, NgayKe, TongTien, MaPk)
    VALUES (p_MaToaThuoc, p_MaBacSi, p_NgayKe, p_TongTien, p_MaPk);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 12. Procedure thêm chi tiết toa thuốc
CREATE OR REPLACE PROCEDURE Sp_AddChiTietToaThuoc(
    p_MaToaThuoc NVARCHAR2,
    p_MaThuoc NVARCHAR2,
    p_SoLuong NVARCHAR2,
    p_LieuDung NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM ChiTietToaThuoc WHERE MaToaThuoc = p_MaToaThuoc AND MaThuoc = p_MaThuoc;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20011, 'Chi tiết toa thuốc đã tồn tại.');
    END IF;

    INSERT INTO ChiTietToaThuoc (MaToaThuoc, MaThuoc, SoLuong, LieuDung)
    VALUES (p_MaToaThuoc, p_MaThuoc, p_SoLuong, p_LieuDung);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 13. Procedure thêm thuốc
CREATE OR REPLACE PROCEDURE Sp_AddThuoc(
    p_MaThuoc NVARCHAR2,
    p_TenThuoc NVARCHAR2,
    p_DonVi NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM Thuoc WHERE MaThuoc = p_MaThuoc;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20012, 'Mã thuốc đã tồn tại.');
    END IF;

    INSERT INTO Thuoc (MaThuoc, TenThuoc, DonVi)
    VALUES (p_MaThuoc, p_TenThuoc, p_DonVi);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 14. Procedure thêm phiếu nhập thuốc
CREATE OR REPLACE PROCEDURE Sp_AddPhieuNhapThuoc(
    p_MaPhieuNhap NVARCHAR2,
    p_NgayNhap DATE,
    p_NhaCungCap NVARCHAR2
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM PhieuNhapThuoc WHERE MaPhieuNhap = p_MaPhieuNhap;
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20013, 'Mã phiếu nhập đã tồn tại.');
    END IF;

    INSERT INTO PhieuNhapThuoc (MaPhieuNhap, NgayNhap, NhaCungCap)
    VALUES (p_MaPhieuNhap, p_NgayNhap, p_NhaCungCap);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 15. Procedure thêm chi tiết phiếu nhập
CREATE OR REPLACE PROCEDURE Sp_AddChiTietPhieuNhap(
    p_MaPhieuNhap NVARCHAR2,
    p_MaThuoc NVARCHAR2,
    p_SoLuong NUMBER,
    p_GiaNhap NUMBER,
    p_HanSuDung DATE
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM ChiTietPhieuNhap 
    WHERE MaPhieuNhap = p_MaPhieuNhap AND MaThuoc = p_MaThuoc;
    
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20014, 'Chi tiết phiếu nhập đã tồn tại.');
    END IF;

    INSERT INTO ChiTietPhieuNhap (MaPhieuNhap, MaThuoc, SoLuong, GiaNhap, HanSuDung)
    VALUES (p_MaPhieuNhap, p_MaThuoc, p_SoLuong, p_GiaNhap, p_HanSuDung);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 16. Procedure thêm giá bán thuốc
CREATE OR REPLACE PROCEDURE Sp_AddGiaBanThuoc(
    p_MaThuoc NVARCHAR2,
    p_NgayApDung DATE,
    p_GiaBan NUMBER
)
AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM GiaBanThuoc 
    WHERE MaThuoc = p_MaThuoc AND NgayApDung = p_NgayApDung;
    
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20015, 'Giá bán đã tồn tại cho thuốc và ngày áp dụng này.');
    END IF;

    INSERT INTO GiaBanThuoc (MaThuoc, NgayApDung, GiaBan)
    VALUES (p_MaThuoc, p_NgayApDung, p_GiaBan);
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 17. Procedure xóa nhân viên
CREATE OR REPLACE PROCEDURE Delete_NhanVien(
    p_MaNV NVARCHAR2
)
AS
BEGIN
    -- Lưu vào bảng lưu trữ
    INSERT INTO Archive_NhanVien (MaNV, HoTenNV, NgaySinh, GioiTinh, DiaChi, SDT, MaPB, ArchivedAt)
    SELECT MaNV, HoTenNV, NgaySinh, GioiTinh, DiaChi, SDT, MaPB, SYSTIMESTAMP
    FROM NhanVien
    WHERE MaNV = p_MaNV;

    -- Xóa
    DELETE FROM NhanVien WHERE MaNV = p_MaNV;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 18. Procedure xóa bệnh nhân
CREATE OR REPLACE PROCEDURE Delete_BenhNhan(
    p_MaBN NVARCHAR2
)
AS
BEGIN
    INSERT INTO BenhNhan_Archive (MaBN, HoTenBN, NgaySinh, DiaChi, SDT, ArchiveDate, ActionType)
    SELECT MaBN, HoTenBN, NgaySinh, DiaChi, SDT, SYSTIMESTAMP, 'DELETE'
    FROM BenhNhan
    WHERE MaBN = p_MaBN;

    DELETE FROM BenhNhan WHERE MaBN = p_MaBN;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 19. Procedure xóa bác sĩ
CREATE OR REPLACE PROCEDURE Delete_BacSi(
    p_MaBS NVARCHAR2
)
AS
BEGIN
    INSERT INTO BacSi_Archive (MaBS, TrinhDo, ArchiveDate, ActionType)
    SELECT MaBS, TrinhDo, SYSTIMESTAMP, 'DELETE'
    FROM BacSi
    WHERE MaBS = p_MaBS;

    DELETE FROM BacSi WHERE MaBS = p_MaBS;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 20. Procedure xóa phòng ban
CREATE OR REPLACE PROCEDURE Delete_PhongBan(
    p_MaPB NVARCHAR2
)
AS
BEGIN
    INSERT INTO PhongBan_Archive (MaPB, MaBP, TenPhongBan, MoTa, ArchiveDate, ActionType)
    SELECT MaPB, MaBP, TenPhongBan, MoTa, SYSTIMESTAMP, 'DELETE'
    FROM PhongBan
    WHERE MaPB = p_MaPB;

    DELETE FROM PhongBan WHERE MaPB = p_MaPB;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 21. Procedure xóa bộ phận
CREATE OR REPLACE PROCEDURE Delete_BoPhan(
    p_MaBP NVARCHAR2
)
AS
BEGIN
    INSERT INTO BoPhan_Archive (MaBP, TenBoPhan, ArchiveDate, ActionType)
    SELECT MaBP, TenBoPhan, SYSTIMESTAMP, 'DELETE'
    FROM BoPhan
    WHERE MaBP = p_MaBP;

    DELETE FROM BoPhan WHERE MaBP = p_MaBP;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 22. Procedure xóa ca trực
CREATE OR REPLACE PROCEDURE Delete_CaTruc(
    p_MaCT NVARCHAR2
)
AS
BEGIN
    INSERT INTO CaTruc_Archive (MaCT, ThoiGianBT, ThoiGianKT, NVtruc, ArchiveDate, ActionType)
    SELECT MaCT, ThoiGianBT, ThoiGianKT, NVtruc, SYSTIMESTAMP, 'DELETE'
    FROM CaTruc
    WHERE MaCT = p_MaCT;

    DELETE FROM CaTruc WHERE MaCT = p_MaCT;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 23. Procedure xóa lương
CREATE OR REPLACE PROCEDURE Delete_Luong(
    p_MaLuong NVARCHAR2
)
AS
BEGIN
    INSERT INTO Luong_Archive (MaLuong, MaNV, Thang, Nam, LuongCoBan, PhuCap, NgayCong, TongLuong, ArchiveDate, ActionType)
    SELECT MaLuong, MaNV, Thang, Nam, LuongCoBan, PhuCap, NgayCong, TongLuong, SYSTIMESTAMP, 'DELETE'
    FROM Luong
    WHERE MaLuong = p_MaLuong;

    DELETE FROM Luong WHERE MaLuong = p_MaLuong;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 24. Procedure xóa tài khoản
CREATE OR REPLACE PROCEDURE Delete_TaiKhoan(
    p_MaTK NVARCHAR2
)
AS
BEGIN
    INSERT INTO TaiKhoan_Archive (MaTK, MaNV, TenDN, MK, LoaiTK, ArchiveDate, ActionType)
    SELECT MaTK, MaNV, TenDN, MK, LoaiTK, SYSTIMESTAMP, 'DELETE'
    FROM TaiKhoan
    WHERE MaTK = p_MaTK;

    DELETE FROM TaiKhoan WHERE MaTK = p_MaTK;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 25. Procedure xóa phiếu khám bệnh
CREATE OR REPLACE PROCEDURE Delete_PhieuKhamBenh(
    p_MaPK NVARCHAR2
)
AS
BEGIN
    INSERT INTO PhieuKhamBenh_Archive (MaPK, TrieuChung, NgayKham, NguoiKham, Bacsi, ArchiveDate, ActionType)
    SELECT MaPK, TrieuChung, NgayKham, NguoiKham, Bacsi, SYSTIMESTAMP, 'DELETE'
    FROM PhieuKhamBenh
    WHERE MaPK = p_MaPK;

    DELETE FROM PhieuKhamBenh WHERE MaPK = p_MaPK;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 26. Procedure xóa chi tiết phiếu khám
CREATE OR REPLACE PROCEDURE Delete_ChiTietPhieuKham(
    p_MaPK NVARCHAR2,
    p_MaTT NVARCHAR2
)
AS
BEGIN
    INSERT INTO ChiTietPhieuKham_Archive (MaPK, MaTT, SoTien, TTThanhToan, ArchiveDate, ActionType)
    SELECT MaPK, MaTT, SoTien, TTThanhToan, SYSTIMESTAMP, 'DELETE'
    FROM ChiTietPhieuKham
    WHERE MaPK = p_MaPK AND MaTT = p_MaTT;

    DELETE FROM ChiTietPhieuKham WHERE MaPK = p_MaPK AND MaTT = p_MaTT;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 27. Procedure xóa thủ tục
CREATE OR REPLACE PROCEDURE Delete_ThuTuc(
    p_MaThuTuc NVARCHAR2
)
AS
BEGIN
    INSERT INTO ThuTuc_Archive (MaThuTuc, TenTuc, DonGia, ArchiveDate, ActionType)
    SELECT MaThuTuc, TenTuc, DonGia, SYSTIMESTAMP, 'DELETE'
    FROM ThuTuc
    WHERE MaThuTuc = p_MaThuTuc;

    DELETE FROM ThuTuc WHERE MaThuTuc = p_MaThuTuc;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 28. Procedure xóa toa thuốc
CREATE OR REPLACE PROCEDURE Delete_ToaThuoc(
    p_MaToaThuoc NVARCHAR2
)
AS
BEGIN
    INSERT INTO ToaThuoc_Archive (MaToaThuoc, MaBacSi, NgayKe, TongTien, ArchiveDate, ActionType)
    SELECT MaToaThuoc, MaBacSi, NgayKe, TongTien, SYSTIMESTAMP, 'DELETE'
    FROM ToaThuoc
    WHERE MaToaThuoc = p_MaToaThuoc;

    DELETE FROM ToaThuoc WHERE MaToaThuoc = p_MaToaThuoc;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 29. Procedure xóa chi tiết toa thuốc
CREATE OR REPLACE PROCEDURE Delete_ChiTietToaThuoc(
    p_MaToaThuoc NVARCHAR2,
    p_MaThuoc NVARCHAR2
)
AS
BEGIN
    INSERT INTO ChiTietToaThuoc_Archive (MaToaThuoc, MaThuoc, SoLuong, LieuDung, ArchiveDate, ActionType)
    SELECT MaToaThuoc, MaThuoc, SoLuong, LieuDung, SYSTIMESTAMP, 'DELETE'
    FROM ChiTietToaThuoc
    WHERE MaToaThuoc = p_MaToaThuoc AND MaThuoc = p_MaThuoc;

    DELETE FROM ChiTietToaThuoc WHERE MaToaThuoc = p_MaToaThuoc AND MaThuoc = p_MaThuoc;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 30. Procedure xóa thuốc
CREATE OR REPLACE PROCEDURE Delete_Thuoc(
    p_MaThuoc NVARCHAR2
)
AS
BEGIN
    -- Lưu vào bảng archive
    INSERT INTO Thuoc_Archive (MaThuoc, TenThuoc, DonVi, ArchiveDate, ActionType)
    SELECT MaThuoc, TenThuoc, DonVi, SYSTIMESTAMP, 'DELETE'
    FROM Thuoc
    WHERE MaThuoc = p_MaThuoc;

    -- Xóa các bản ghi liên quan
    DELETE FROM GiaBanThuoc WHERE MaThuoc = p_MaThuoc;
    DELETE FROM Thuoc WHERE MaThuoc = p_MaThuoc;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 31. Procedure xóa phiếu nhập thuốc
CREATE OR REPLACE PROCEDURE Delete_PhieuNhapThuoc(
    p_MaPhieuNhap NVARCHAR2
)
AS
BEGIN
    INSERT INTO PhieuNhapThuoc_Archive (MaPhieuNhap, NgayNhap, NhaCungCap, ArchiveDate, ActionType)
    SELECT MaPhieuNhap, NgayNhap, NhaCungCap, SYSTIMESTAMP, 'DELETE'
    FROM PhieuNhapThuoc
    WHERE MaPhieuNhap = p_MaPhieuNhap;

    DELETE FROM PhieuNhapThuoc WHERE MaPhieuNhap = p_MaPhieuNhap;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 32. Procedure xóa chi tiết phiếu nhập
CREATE OR REPLACE PROCEDURE Delete_ChiTietPhieuNhap(
    p_MaPhieuNhap NVARCHAR2,
    p_MaThuoc NVARCHAR2
)
AS
BEGIN
    INSERT INTO ChiTietPhieuNhap_Archive (MaPhieuNhap, MaThuoc, SoLuong, GiaNhap, HanSuDung, ArchiveDate, ActionType)
    SELECT MaPhieuNhap, MaThuoc, SoLuong, GiaNhap, HanSuDung, SYSTIMESTAMP, 'DELETE'
    FROM ChiTietPhieuNhap
    WHERE MaPhieuNhap = p_MaPhieuNhap AND MaThuoc = p_MaThuoc;

    DELETE FROM ChiTietPhieuNhap WHERE MaPhieuNhap = p_MaPhieuNhap AND MaThuoc = p_MaThuoc;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

-- 33. Procedure xóa giá bán thuốc
CREATE OR REPLACE PROCEDURE Delete_GiaBanThuoc(
    p_MaThuoc NVARCHAR2,
    p_NgayApDung DATE
)
AS
BEGIN
    INSERT INTO GiaBanThuoc_Archive (MaThuoc, NgayApDung, GiaBan, ArchiveDate, ActionType)
    SELECT MaThuoc, NgayApDung, GiaBan, SYSTIMESTAMP, 'DELETE'
    FROM GiaBanThuoc
    WHERE MaThuoc = p_MaThuoc AND NgayApDung = p_NgayApDung;

    DELETE FROM GiaBanThuoc WHERE MaThuoc = p_MaThuoc AND NgayApDung = p_NgayApDung;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/