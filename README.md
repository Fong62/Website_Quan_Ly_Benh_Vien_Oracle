# 🏥 Hệ Thống Quản Lý Thông Tin Bệnh Viện (Hospital Management System)

## 📌 Giới thiệu dự án
Đây là kho lưu trữ mã nguồn cho đồ án môn học **Chuyên đề Oracle**. Dự án xây dựng một hệ thống Quản lý Bệnh viện dựa trên kiến trúc ASP.NET Core MVC, với trọng tâm đặt vào việc bảo vệ an toàn thông tin y tế nhạy cảm ở tầng Database thông qua hệ quản trị cơ sở dữ liệu **Oracle**.

## 🛡️ Các kỹ thuật bảo mật đã triển khai
Hệ thống không chỉ xử lý các nghiệp vụ quản lý bệnh viện thông thường (quản lý bệnh nhân, bác sĩ, hồ sơ bệnh án) mà còn áp dụng các kỹ thuật bảo mật chuyên sâu của Oracle:
* **Mã hóa dữ liệu (Data Encryption):** Ứng dụng các Package tự định nghĩa kết hợp thư viện `DBMS_CRYPTO` để mã hóa các trường thông tin nhạy cảm của bệnh nhân và nhân viên.
* **Kiểm toán dữ liệu (Auditing):** Sử dụng hệ thống **Trigger (PL/SQL)** để tự động ghi log (lưu vết) mọi hành vi `INSERT`, `UPDATE`, `DELETE` trên các bảng dữ liệu quan trọng.
* **Tối ưu & Phân quyền:** Sử dụng **Stored Procedures (PL/SQL)** để xử lý toàn bộ logic truy vấn, ngăn chặn triệt để rủi ro SQL Injection và thiết lập **User/Role** trong Oracle để kiểm soát quyền truy cập dữ liệu khắt khe.

## 📂 Hướng dẫn thiết lập Cơ sở dữ liệu
⚠️ **QUAN TRỌNG:** Để hệ thống hoạt động đúng cấu trúc bảo mật và không bị lỗi khóa, vui lòng thực thi các file Script SQL trong Oracle theo **đúng thứ tự** dưới đây:

1. `TaoSQL.sql` (Khởi tạo Pluggable Database, tạo User và cấp quyền)
2. `Table_Query.sql` (Tạo cấu trúc các bảng chính và khóa ngoại)
3. `ArchiveTable.sql` (Tạo các bảng lưu trữ/lưu vết)
4. `Auditing.sql` (Kích hoạt cơ chế kiểm toán và ghi log)
5. `Oracle_Procedure.sql` (Tạo các thủ tục lưu trữ PL/SQL xử lý nghiệp vụ)
6. `Oracle_Encrypted.sql` (Thiết lập cấu hình Package và Function mã hóa dữ liệu)
7. `Oracle_Trigger.sql` (Tạo các Trigger bắt sự kiện thay đổi dữ liệu)
8. `SQLDuLieu.sql` (Đổ dữ liệu mẫu - Dữ liệu sẽ tự động được mã hóa và lưu vết)

## 🚀 Hướng dẫn chạy ứng dụng
1. Clone repository về máy tính:
   `git clone https://github.com/Fong62/Quan_Ly_Benh_Vien.git`

2. Mở file `appsettings.json` trong project ASP.NET Core.
3. Cập nhật chuỗi kết nối `DefaultString` (hoặc `DefaultConnection`) trỏ đến **Oracle Database** Local của bạn.
4. Build và Run project bằng Visual Studio.

## 📞 Liên hệ
**Nguyễn Hoàng Phong**
* **Email:** nguyenhoangphongsupham@gmail.com
* **LinkedIn:** [Nguyễn Hoàng Phong](https://www.linkedin.com/in/fong62/)
* **GitHub:** [Fong62](https://github.com/Fong62)
