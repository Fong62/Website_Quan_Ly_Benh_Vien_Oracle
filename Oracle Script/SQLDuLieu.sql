select * from "Sach"
select * from "NhaCungCap"

Delete from "Sach"

INSERT INTO "NhaCungCap" 
    ("MaNhaCungCap", "TenNhaCungCap", "DiaChi", "SoDienThoai", "Email") -- Email viết đúng case
VALUES
    ('NCC001', 'Công ty Sách Tri Thức', '123 Đường Văn Lang, Hà Nội', '02437651234', 'lienhe@trithucbooks.vn');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B001', 'Lập Trình C# Cơ Bản', 'Nguyễn Văn A', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 189000, 'Mới', 'covers/b001.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B002', 'Học Python Trong 21 Ngày', 'Trần Thị B', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-02', 'YYYY-MM-DD'), 225000, 'Mới', 'covers/b002.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B003', 'Giải Thuật và Cấu Trúc Dữ Liệu', 'Lê Văn C', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-03', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b003.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B004', 'Thiết Kế Web Với HTML/CSS', 'Phạm Thị D', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-05-04', 'YYYY-MM-DD'), 199000, 'Mới', 'covers/b004.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B005', 'Cơ Sở Dữ Liệu SQL Server', 'Hoàng Văn E', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-05', 'YYYY-MM-DD'), 245000, 'Mới', 'covers/b005.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B006', 'Machine Learning Cơ Bản', 'Vũ Thị F', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-06', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b006.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B007', 'Deep Learning Nâng Cao', 'Đỗ Văn G', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-07', 'YYYY-MM-DD'), 355000, 'Mới', 'covers/b007.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B008', 'Nhập Môn ReactJS', 'Lương Thị H', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-05-08', 'YYYY-MM-DD'), 219000, 'Mới', 'covers/b008.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B009', 'Vue.js Toàn Tập', 'Bùi Văn I', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 239000, 'Mới', 'covers/b009.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B010', 'Flutter Cho Mobile', 'Hoàng Thị K', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-10', 'YYYY-MM-DD'), 289000, 'Mới', 'covers/b010.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B011', 'React Native Thực Chiến', 'Ngô Văn L', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-11', 'YYYY-MM-DD'), 265000, 'Mới', 'covers/b011.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B012', 'Node.js và Express', 'Phan Thị M', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-05-12', 'YYYY-MM-DD'), 229000, 'Mới', 'covers/b012.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B013', 'Docker Cho DevOps', 'Trần Văn N', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-13', 'YYYY-MM-DD'), 299000, 'Mới', 'covers/b013.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B014', 'Kubernetes Toàn Tập', 'Đặng Thị O', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-14', 'YYYY-MM-DD'), 345000, 'Mới', 'covers/b014.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B015', 'Thiết Kế API với ASP.NET Core', 'Lê Thị P', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-15', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b015.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B016', 'Ứng Dụng Microservices', 'Nguyễn Văn Q', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-05-16', 'YYYY-MM-DD'), 325000, 'Mới', 'covers/b016.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B017', 'Bảo Mật Ứng Dụng Web', 'Phạm Văn R', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-17', 'YYYY-MM-DD'), 249000, 'Mới', 'covers/b017.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B018', 'Phát Triển Game Unity', 'Hoàng Văn S', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-18', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b018.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B019', 'Phát Triển Game Unreal', 'Vũ Thị T', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-19', 'YYYY-MM-DD'), 335000, 'Mới', 'covers/b019.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B020', 'Công Nghệ Blockchain', 'Đỗ Văn U', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-05-20', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b020.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B021', 'Ứng dụng bảo mật Microservices', 'Nguyễn Tấn V', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-21', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b021.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B022', 'Ứng dụng công nghệ GitHub', 'Trần Hữu X', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-22', 'YYYY-MM-DD'), 255000, 'Mới', 'covers/b022.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B023', 'Nền tảng cho lập trình viên Java', 'Nguyễn Phúc Y', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-23', 'YYYY-MM-DD'), 235000, 'Mới', 'covers/b023.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B024', 'CSS chuyên sâu', 'Lê Quang Z', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-05-24', 'YYYY-MM-DD'), 205000, 'Mới', 'covers/b024.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B025', 'Học C++ qua ví dụ', 'Trần Ngọc A', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-25', 'YYYY-MM-DD'), 225000, 'Mới', 'covers/b025.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B026', 'Kiểm thử phần mềm hiệu quả', 'Hoàng Anh B', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-26', 'YYYY-MM-DD'), 265000, 'Mới', 'covers/b026.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B027', 'Nền tảng cho lập trình viên Python', 'Trịnh Hoài C', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-27', 'YYYY-MM-DD'), 245000, 'Mới', 'covers/b027.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B028', 'C# chuyên sâu', 'Phan Đức D', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-05-28', 'YYYY-MM-DD'), 235000, 'Mới', 'covers/b028.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B029', 'Core Kubernetes', 'Nguyễn Thiên E', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-05-29', 'YYYY-MM-DD'), 325000, 'Mới', 'covers/b029.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B030', '100 lỗi C++ và cách sửa đổi', 'Phạm Minh F', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-05-30', 'YYYY-MM-DD'), 195000, 'Mới', 'covers/b030.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B031', 'Chuyên sâu HTML5 với CSS, JavaScript và Multimedia', 'Lê Trung G', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-05-31', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b031.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B032', 'Nhập môn JQuery', 'Trịnh Đình H', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-01', 'YYYY-MM-DD'), 215000, 'Mới', 'covers/b032.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B033', 'Cấu trúc dữ liệu và giải thuật JavaScript', 'Đỗ Tấn I', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-02', 'YYYY-MM-DD'), 245000, 'Mới', 'covers/b033.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B034', 'Quản lý nội dung Web', 'Nguyễn Công J', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-06-03', 'YYYY-MM-DD'), 225000, 'Mới', 'covers/b034.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B035', 'Xây dựng Tools với GitHub', 'Phạm Đức K', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-06-04', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b035.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B036', 'Lập trình PHP chuyên nghiệp', 'Lê Thành L', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-05', 'YYYY-MM-DD'), 235000, 'Mới', 'covers/b036.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B037', 'Công thức Java hiện đại', 'Nguyễn Quang M', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-06', 'YYYY-MM-DD'), 255000, 'Mới', 'covers/b037.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B038', 'Nhập Môn Docker', 'Nguyễn Quang N', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-06-07', 'YYYY-MM-DD'), 215000, 'Mới', 'covers/b038.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B039', 'Node.js cho lập trình viên .Net', 'Trần Đình N', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-06-08', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b039.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B040', 'Xây dựng ứng dụng web với Visual Studio', 'Lê Nhật O', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-09', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b040.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B041', 'Trí tuệ nhân tạo cho .NET', 'Trần Quốc P', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-10', 'YYYY-MM-DD'), 335000, 'Mới', 'covers/b041.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B042', 'Phát triển game Unity với C#', 'Nguyễn Tấn Q', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-06-11', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b042.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B043', 'Phát triển game mobile trên Unity 2022', 'Lê Nam R', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-06-12', 'YYYY-MM-DD'), 305000, 'Mới', 'covers/b043.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B044', 'Thuật toán phát triển game với Unity 3D', 'Phan Thành S', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-13', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b044.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B045', 'Động cơ trí tuệ nhân tạo', 'Trần Ngọc T', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-14', 'YYYY-MM-DD'), 345000, 'Mới', 'covers/b045.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B046', 'Data Science cơ bản', 'Phạm Anh U', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-06-15', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b046.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B047', 'Machine Learning thực hành', 'Nguyễn Nhật V', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-06-16', 'YYYY-MM-DD'), 325000, 'Mới', 'covers/b047.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B048', 'Máy dự đoán', 'Phạm Văn W', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-17', 'YYYY-MM-DD'), 355000, 'Mới', 'covers/b048.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B049', 'Deep Learning', 'Phan Quốc X', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-18', 'YYYY-MM-DD'), 375000, 'Mới', 'covers/b049.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B050', 'Minh họa Deep Learning', 'Trần Văn Y', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-06-19', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b050.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B051', 'Lập trình Mobile', 'Lê Văn Z', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-06-20', 'YYYY-MM-DD'), 245000, 'Mới', 'covers/b051.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B052', 'AI và Machine Learning cho lập trình viên', 'Lê Quốc A', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-21', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b052.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B053', 'Lập trình Android', 'Đỗ Thanh B', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-22', 'YYYY-MM-DD'), 265000, 'Mới', 'covers/b053.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B054', 'Con đường đến React', 'Nguyễn Mạnh C', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-06-23', 'YYYY-MM-DD'), 235000, 'Mới', 'covers/b054.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B055', 'Xây dựng Web App hiện đại', 'Nguyễn Thành D', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-06-24', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b055.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B056', 'Phát triển ứng dụng di động', 'Lê Hải E', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-25', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b056.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B057', 'Tối ưu hóa AppStore', 'Lê Bảo F', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-26', 'YYYY-MM-DD'), 225000, 'Mới', 'covers/b057.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B058', 'Bẻ khóa Iphone và phát triển Android', 'Trần Quốc G', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-06-27', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b058.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B059', 'Phát triển ứng dụng di động tinh gọn', 'Nguyễn Trần Gia H', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-06-28', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b059.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B060', 'Phát triển ứng dụng di động toàn diện', 'Lê Đức I', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-06-29', 'YYYY-MM-DD'), 305000, 'Mới', 'covers/b060.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B061', 'Phát triển an toàn cho ứng dụng di động', 'Lê Văn J', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b061.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B062', 'Ứng dụng tiếp thị và Ứng dụng bán hàng', 'Lê Văn K', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-01', 'YYYY-MM-DD'), 255000, 'Mới', 'covers/b062.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B063', 'Nghệ thuật thiết kế trò chơi', 'Nguyễn Minh L', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-02', 'YYYY-MM-DD'), 325000, 'Mới', 'covers/b063.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B064', 'Games, Thiết kế và Chơi', 'Phan Ngọc M', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-03', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b064.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B065', 'Các mẫu lập trình trò chơi', 'Nguyễn Quốc N', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-07-04', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b065.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B066', 'Lập trình Game AI qua ví dụ', 'Trịnh Hùng O', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-05', 'YYYY-MM-DD'), 335000, 'Mới', 'covers/b066.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B067', 'Cấu trúc dữ liệu và giải thuật trong C++', 'Lê Bảo P', 'CNTT', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-06', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b067.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B068', 'Phát hiện va chạm thời gian thực', 'Phạm Hữu Q', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-07', 'YYYY-MM-DD'), 305000, 'Mới', 'covers/b068.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B069', 'Sổ tay DevOps', 'Phạm Hồng R', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-07-08', 'YYYY-MM-DD'), 245000, 'Mới', 'covers/b069.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B070', 'Kỹ thuật với độ tin cậy của web', 'Trịnh Quốc S', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-09', 'YYYY-MM-DD'), 265000, 'Mới', 'covers/b070.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B071', 'DevOps hiệu quả', 'Lê Minh T', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-10', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b071.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B072', 'Sổ tay về độ tin cậy của web', 'Lê Quang U', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-11', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b072.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B073', 'Ansible cho DevOps', 'Lê Hữu V', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-07-12', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b073.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B074', 'Xử lý sự cố DevOps', 'Nguyễn Hồng W', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-13', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b074.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B075', 'DevOps nguyên bản đám mây với Kubernetes', 'Nguyễn Anh X', 'DevOps', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-14', 'YYYY-MM-DD'), 345000, 'Mới', 'covers/b075.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B076', 'Trí tuệ nhân tạo: Bước chạm đến hiện đại', 'Phạm Nhật Y', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-15', 'YYYY-MM-DD'), 365000, 'Mới', 'covers/b076.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B077', 'Khát vọng học máy', 'Trần Quốc Z', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-07-16', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b077.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B078', 'Giới thiệu học tăng cường', 'Trần Quốc A', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-17', 'YYYY-MM-DD'), 305000, 'Mới', 'covers/b078.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B079', 'Kỹ thuật AI', 'Phạm Nhật B', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-18', 'YYYY-MM-DD'), 325000, 'Mới', 'covers/b079.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B080', 'Khoa học dữ liệu cho doanh nghiệp', 'Nguyễn Anh C', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-19', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b080.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B081', 'Bài toán căn chỉnh: Học máy và bài toán nhân loại', 'Nguyễn Hồng D', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-07-20', 'YYYY-MM-DD'), 335000, 'Mới', 'covers/b081.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B082', 'Lịch sử của trí tuệ nhân tạo', 'Lê Hữu E', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-21', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b082.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B083', 'Cuộc sống 3.0: Con người trong kỷ nguyên AI', 'Lê Quang F', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-22', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b083.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B084', 'Cơ sở của học máy cho phân tích dữ liệu dự đoán', 'Lê Minh G', 'AI/ML', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-23', 'YYYY-MM-DD'), 345000, 'Mới', 'covers/b084.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B085', 'JavaScript và Query', 'Trịnh Quốc H', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-07-24', 'YYYY-MM-DD'), 225000, 'Mới', 'covers/b085.jpg', 'NCC001');

INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B086', 'JavaScript hùng biện', 'Phạm Hồng I', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-25', 'YYYY-MM-DD'), 235000, 'Mới', 'covers/b086.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B087', 'Học PHP, MySQL và JavaScript', 'Phạm Hữu J', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-26', 'YYYY-MM-DD'), 255000, 'Mới', 'covers/b087.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B088', 'PHP cho web', 'Lê Bảo K', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-27', 'YYYY-MM-DD'), 245000, 'Mới', 'covers/b088.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B089', 'Học JavaScript cấp tốc', 'Trịnh Hùng L', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-07-28', 'YYYY-MM-DD'), 215000, 'Mới', 'covers/b089.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B090', 'Bí mật Css', 'Nguyễn Quốc M', 'Web Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-07-29', 'YYYY-MM-DD'), 225000, 'Mới', 'covers/b090.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B091', 'Bàn luận thiết kế trò chơi', 'Phan Ngọc N', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-07-30', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b091.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B092', 'Sách hướng dẫn phát triển Unity', 'Nguyễn Minh O', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-07-31', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b092.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B093', 'Unity từ số 0 đến chuyên nghiệp', 'Lê Văn P', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-08-01', 'YYYY-MM-DD'), 325000, 'Mới', 'covers/b093.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B094', 'Lên cấp! Những hướng dẫn thiết kế video game', 'Lê Đức Q', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-08-02', 'YYYY-MM-DD'), 305000, 'Mới', 'covers/b094.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B095', 'Cảm nhận trò chơi: Hướng dẫn về cảm giác ảo', 'Đỗ Thanh R', 'Game Dev', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-08-03', 'YYYY-MM-DD'), 285000, 'Mới', 'covers/b095.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B096', 'Phát triển ứng dụng di động', 'Nguyễn Mạnh S', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-08-04', 'YYYY-MM-DD'), 265000, 'Mới', 'covers/b096.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B097', 'Học Java để phát triển Android', 'Nguyễn Thành T', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Trẻ', TO_DATE('2025-08-05', 'YYYY-MM-DD'), 245000, 'Mới', 'covers/b097.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B098', 'Phát triển ứng dụng di động', 'Lê Quốc V', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Giáo Dục', TO_DATE('2025-08-06', 'YYYY-MM-DD'), 275000, 'Mới', 'covers/b098.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B099', 'Phát triển giao diện di động với Ionic và React', 'Phan Võ Anh U', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Khoa Học', TO_DATE('2025-08-07', 'YYYY-MM-DD'), 295000, 'Mới', 'covers/b099.jpg', 'NCC001');
    
INSERT INTO "Sach"
    ("MaSach", "TenSach", "TacGia", "TheLoai", "NamXuatBan", "NhaXuatBan", "NgayNhap", "GiaTri", "TinhTrang", "coverUrl", "MaNhaCungCap")
VALUES
    ('B100', 'Lập trình IOS', 'Quách Tuấn V', 'Di Động', TO_TIMESTAMP('2025', 'YYYY'), 'NXB Tổng Hợp', TO_DATE('2025-08-08', 'YYYY-MM-DD'), 315000, 'Mới', 'covers/b100.jpg', 'NCC001');

/*Nhớ commit*/
commit;