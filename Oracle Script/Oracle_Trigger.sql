-- Trigger cho bảng PhieuNhapThuoc
CREATE OR REPLACE TRIGGER trg_Audit_PhieuNhapThuoc
AFTER INSERT OR UPDATE OR DELETE ON PhieuNhapThuoc
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO Audit_Log (TableName, ActionType, RecordID)
        VALUES ('PhieuNhapThuoc', 'INSERT', :NEW.MaPhieuNhap);
    ELSIF UPDATING THEN
        INSERT INTO Audit_Log (TableName, ActionType, RecordID)
        VALUES ('PhieuNhapThuoc', 'UPDATE', :NEW.MaPhieuNhap);
    ELSIF DELETING THEN
        INSERT INTO Audit_Log (TableName, ActionType, RecordID)
        VALUES ('PhieuNhapThuoc', 'DELETE', :OLD.MaPhieuNhap);
    END IF;
END;
/

-- Trigger cho bảng TaiKhoan
CREATE OR REPLACE TRIGGER trg_Audit_TaiKhoan_InsertUpdate
AFTER INSERT OR UPDATE ON TaiKhoan
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO Audit_Log (TableName, ActionType, RecordID)
        VALUES ('TaiKhoan', 'INSERT', :NEW.MaTK);
    ELSIF UPDATING THEN
        INSERT INTO Audit_Log (TableName, ActionType, RecordID)
        VALUES ('TaiKhoan', 'UPDATE', :NEW.MaTK);
    END IF;
END;
/

-- Trigger cho bảng BenhNhan
CREATE OR REPLACE TRIGGER TR_BenhNhan_Delete
AFTER DELETE ON BenhNhan
FOR EACH ROW
BEGIN
    INSERT INTO BenhNhan_Archive (MaBN, HoTenBN, NgaySinh, DiaChi, SDT, ArchiveDate, ActionType)
    VALUES (:OLD.MaBN, :OLD.HoTenBN, :OLD.NgaySinh, :OLD.DiaChi, :OLD.SDT, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('BenhNhan', 'DELETE', :OLD.MaBN);
END;
/

-- Trigger cho bảng BoPhan
CREATE OR REPLACE TRIGGER TR_BoPhan_Delete
AFTER DELETE ON BoPhan
FOR EACH ROW
BEGIN
    INSERT INTO BoPhan_Archive (MaBP, TenBoPhan, ArchiveDate, ActionType)
    VALUES (:OLD.MaBP, :OLD.TenBoPhan, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('BoPhan', 'DELETE', :OLD.MaBP);
END;
/

-- Trigger cho bảng PhongBan
CREATE OR REPLACE TRIGGER TR_PhongBan_Delete
AFTER DELETE ON PhongBan
FOR EACH ROW
BEGIN
    INSERT INTO PhongBan_Archive (MaPB, MaBP, TenPhongBan, MoTa, ArchiveDate, ActionType)
    VALUES (:OLD.MaPB, :OLD.MaBP, :OLD.TenPhongBan, :OLD.MoTa, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('PhongBan', 'DELETE', :OLD.MaPB);
END;
/

-- Trigger cho bảng NhanVien
CREATE OR REPLACE TRIGGER TR_NhanVien_Delete
AFTER DELETE ON NhanVien
FOR EACH ROW
BEGIN
    INSERT INTO Archive_NhanVien (MaNV, HoTenNV, NgaySinh, GioiTinh, DiaChi, SDT, MaPB, ArchivedAt)
    VALUES (:OLD.MaNV, :OLD.HoTenNV, :OLD.NgaySinh, :OLD.GioiTinh, :OLD.DiaChi, :OLD.SDT, :OLD.MaPB, SYSTIMESTAMP);
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('NhanVien', 'DELETE', :OLD.MaNV);
END;
/

-- Trigger cho bảng BacSi
CREATE OR REPLACE TRIGGER TR_BacSi_Delete
AFTER DELETE ON BacSi
FOR EACH ROW
BEGIN
    INSERT INTO BacSi_Archive (MaBS, TrinhDo, ArchiveDate, ActionType)
    VALUES (:OLD.MaBS, :OLD.TrinhDo, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('BacSi', 'DELETE', :OLD.MaBS);
END;
/

-- Trigger cho bảng CaTruc
CREATE OR REPLACE TRIGGER TR_CaTruc_Delete
AFTER DELETE ON CaTruc
FOR EACH ROW
BEGIN
    INSERT INTO CaTruc_Archive (MaCT, ThoiGianBT, ThoiGianKT, NVtruc, ArchiveDate, ActionType)
    VALUES (:OLD.MaCT, :OLD.ThoiGianBT, :OLD.ThoiGianKT, :OLD.NVtruc, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('CaTruc', 'DELETE', :OLD.MaCT);
END;
/

-- Trigger cho bảng Luong
CREATE OR REPLACE TRIGGER TR_Luong_Delete
AFTER DELETE ON Luong
FOR EACH ROW
BEGIN
    INSERT INTO Luong_Archive (MaLuong, MaNV, Thang, Nam, LuongCoBan, PhuCap, NgayCong, TongLuong, ArchiveDate, ActionType)
    VALUES (:OLD.MaLuong, :OLD.MaNV, :OLD.Thang, :OLD.Nam, :OLD.LuongCoBan, :OLD.PhuCap, :OLD.NgayCong, :OLD.TongLuong, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('Luong', 'DELETE', :OLD.MaLuong);
END;
/

-- Trigger cho bảng TaiKhoan
CREATE OR REPLACE TRIGGER TR_TaiKhoan_Delete
AFTER DELETE ON TaiKhoan
FOR EACH ROW
BEGIN
    INSERT INTO TaiKhoan_Archive (MaTK, MaNV, TenDN, MK, ArchiveDate, ActionType)
    VALUES (:OLD.MaTK, :OLD.MaNV, :OLD.TenDN, :OLD.MK, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('TaiKhoan', 'DELETE', :OLD.MaTK);
END;
/

-- Trigger cho bảng PhieuKhamBenh
CREATE OR REPLACE TRIGGER trg_Delete_PhieuKhamBenh
AFTER DELETE ON PhieuKhamBenh
FOR EACH ROW
BEGIN
    INSERT INTO PhieuKhamBenh_Archive (MaPK, TrieuChung, NgayKham, NguoiKham, Bacsi, ActionType)
    VALUES (:OLD.MaPK, :OLD.TrieuChung, :OLD.NgayKham, :OLD.NguoiKham, :OLD.Bacsi, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('PhieuKhamBenh', 'DELETE', :OLD.MaPK);
END;
/

-- Trigger cho bảng SoKhamBenh
CREATE OR REPLACE TRIGGER trg_Delete_SoKhamBenh
AFTER DELETE ON SoKhamBenh
FOR EACH ROW
BEGIN
    INSERT INTO SoKhamBenh_Archive (MaSoKham, MaBN, MaPK, ActionType)
    VALUES (:OLD.MaSoKham, :OLD.MaBN, :OLD.MaPK, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('SoKhamBenh', 'DELETE', :OLD.MaSoKham);
END;
/

-- Trigger cho bảng ThuTuc
CREATE OR REPLACE TRIGGER trg_Delete_ThuTuc
AFTER DELETE ON ThuTuc
FOR EACH ROW
BEGIN
    INSERT INTO ThuTuc_Archive (MaThuTuc, TenTuc, DonGia, ActionType)
    VALUES (:OLD.MaThuTuc, :OLD.TenTuc, :OLD.DonGia, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('ThuTuc', 'DELETE', :OLD.MaThuTuc);
END;
/

-- Trigger cho bảng ChiTietPhieuKham
CREATE OR REPLACE TRIGGER trg_ChiTietPhieuKham_Delete
AFTER DELETE ON ChiTietPhieuKham
FOR EACH ROW
BEGIN
    INSERT INTO ChiTietPhieuKham_Archive (MaPK, MaTT, SoTien, TTThanhToan, ArchiveDate, ActionType)
    VALUES (:OLD.MaPK, :OLD.MaTT, :OLD.SoTien, :OLD.TTThanhToan, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('ChiTietPhieuKham', 'DELETE', :OLD.MaPK || '-' || :OLD.MaTT);
END;
/

-- Trigger cho bảng ToaThuoc
CREATE OR REPLACE TRIGGER trg_ToaThuoc_Delete
AFTER DELETE ON ToaThuoc
FOR EACH ROW
BEGIN
    INSERT INTO ToaThuoc_Archive (MaToaThuoc, MaPK, MaBacSi, NgayKe, TongTien, ArchiveDate, ActionType)
    VALUES (:OLD.MaToaThuoc, :OLD.MaPK, :OLD.MaBacSi, :OLD.NgayKe, :OLD.TongTien, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('ToaThuoc', 'DELETE', :OLD.MaToaThuoc);
END;
/

-- Trigger cho bảng Thuoc
CREATE OR REPLACE TRIGGER trg_Thuoc_Delete
AFTER DELETE ON Thuoc
FOR EACH ROW
BEGIN
    INSERT INTO Thuoc_Archive (MaThuoc, TenThuoc, DonVi, ArchiveDate, ActionType)
    VALUES (:OLD.MaThuoc, :OLD.TenThuoc, :OLD.DonVi, SYSTIMESTAMP, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('Thuoc', 'DELETE', :OLD.MaThuoc);
END;
/

-- Trigger cho bảng ChiTietToaThuoc
CREATE OR REPLACE TRIGGER trg_Delete_ChiTietToaThuoc
AFTER DELETE ON ChiTietToaThuoc
FOR EACH ROW
BEGIN
    INSERT INTO ChiTietToaThuoc_Archive (MaToaThuoc, MaThuoc, SoLuong, LieuDung, ActionType)
    VALUES (:OLD.MaToaThuoc, :OLD.MaThuoc, :OLD.SoLuong, :OLD.LieuDung, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('ChiTietToaThuoc', 'DELETE', :OLD.MaToaThuoc || '-' || :OLD.MaThuoc);
END;
/

-- Trigger cho bảng ChiTietPhieuNhap
CREATE OR REPLACE TRIGGER trg_Delete_ChiTietPhieuNhap
AFTER DELETE ON ChiTietPhieuNhap
FOR EACH ROW
BEGIN
    INSERT INTO ChiTietPhieuNhap_Archive (MaPhieuNhap, MaThuoc, SoLuong, GiaNhap, HanSuDung, ActionType)
    VALUES (:OLD.MaPhieuNhap, :OLD.MaThuoc, :OLD.SoLuong, :OLD.GiaNhap, :OLD.HanSuDung, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('ChiTietPhieuNhap', 'DELETE', :OLD.MaPhieuNhap || '-' || :OLD.MaThuoc);
END;
/

-- Trigger cho bảng GiaBanThuoc
CREATE OR REPLACE TRIGGER trg_Delete_GiaBanThuoc
AFTER DELETE ON GiaBanThuoc
FOR EACH ROW
BEGIN
    INSERT INTO GiaBanThuoc_Archive (MaThuoc, NgayApDung, GiaBan, ActionType)
    VALUES (:OLD.MaThuoc, :OLD.NgayApDung, :OLD.GiaBan, 'DELETE');
    
    INSERT INTO Audit_Log (TableName, ActionType, RecordID)
    VALUES ('GiaBanThuoc', 'DELETE', :OLD.MaThuoc || '-' || TO_CHAR(:OLD.NgayApDung, 'YYYY-MM-DD'));
END;
/