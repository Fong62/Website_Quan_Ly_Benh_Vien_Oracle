using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using QLBV.Models.User_Model;
using Oracle.EntityFrameworkCore;
namespace QLBV.Models;

public partial class QLBVContext : IdentityDbContext<ApplicationUser>
{
    public QLBVContext(DbContextOptions<QLBVContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ArchiveNhanVien> ArchiveNhanViens { get; set; }

    public virtual DbSet<AuditLog> AuditLogs { get; set; }

    public virtual DbSet<BacSi> BacSis { get; set; }

    public virtual DbSet<BacSiArchive> BacSiArchives { get; set; }

    public virtual DbSet<BenhNhan> BenhNhans { get; set; }

    public virtual DbSet<BenhNhanArchive> BenhNhanArchives { get; set; }

    public virtual DbSet<BoPhan> BoPhans { get; set; }

    public virtual DbSet<BoPhanArchive> BoPhanArchives { get; set; }

    public virtual DbSet<CaTruc> CaTrucs { get; set; }

    public virtual DbSet<CaTrucArchive> CaTrucArchives { get; set; }

    public virtual DbSet<ChiTietPhieuKham> ChiTietPhieuKhams { get; set; }

    public virtual DbSet<ChiTietPhieuKhamArchive> ChiTietPhieuKhamArchives { get; set; }

    public virtual DbSet<ChiTietPhieuNhap> ChiTietPhieuNhaps { get; set; }

    public virtual DbSet<ChiTietPhieuNhapArchive> ChiTietPhieuNhapArchives { get; set; }

    public virtual DbSet<ChiTietToaThuoc> ChiTietToaThuocs { get; set; }

    public virtual DbSet<ChiTietToaThuocArchive> ChiTietToaThuocArchives { get; set; }

    public virtual DbSet<GiaBanThuoc> GiaBanThuocs { get; set; }

    public virtual DbSet<GiaBanThuocArchive> GiaBanThuocArchives { get; set; }

    public virtual DbSet<Luong> Luongs { get; set; }

    public virtual DbSet<LuongArchive> LuongArchives { get; set; }

    public virtual DbSet<NhanVien> NhanViens { get; set; }

    public virtual DbSet<PhieuKhamBenh> PhieuKhamBenhs { get; set; }

    public virtual DbSet<PhieuKhamBenhArchive> PhieuKhamBenhArchives { get; set; }

    public virtual DbSet<PhieuNhapThuoc> PhieuNhapThuocs { get; set; }

    public virtual DbSet<PhieuNhapThuocArchive> PhieuNhapThuocArchives { get; set; }

    public virtual DbSet<PhongBan> PhongBans { get; set; }

    public virtual DbSet<PhongBanArchive> PhongBanArchives { get; set; }

    public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }

    public virtual DbSet<TaiKhoanArchive> TaiKhoanArchives { get; set; }

    public virtual DbSet<ThuTuc> ThuTucs { get; set; }

    public virtual DbSet<ThuTucArchive> ThuTucArchives { get; set; }

    public virtual DbSet<Thuoc> Thuocs { get; set; }

    public virtual DbSet<ThuocArchive> ThuocArchives { get; set; }

    public virtual DbSet<ToaThuoc> ToaThuocs { get; set; }

    public virtual DbSet<ToaThuocArchive> ToaThuocArchives { get; set; }
    public virtual DbSet<SoKhamBenh> SoKhamBenhs { get; set; }
    public virtual DbSet<SoKhamBenhArchive> SoKhamBenhArchives {  get; set; }

    //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    //        #warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
    //    => optionsBuilder.UseSqlServer("Server=DESKTOP-K2QLVK4;Database=QLBV;Trusted_Connection=True;MultipleActiveResultSets=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<ApplicationUser>(entity =>
        {
            entity.Property(e => e.EmailConfirmed).HasColumnType("NUMBER(1)"); // Thay BOOLEAN → NUMBER(1)
            entity.Property(e => e.PhoneNumberConfirmed).HasColumnType("NUMBER(1)");
            entity.Property(e => e.TwoFactorEnabled).HasColumnType("NUMBER(1)");
            entity.Property(e => e.LockoutEnabled).HasColumnType("NUMBER(1)");
        });
        // 1. Cấu hình chung cho tất cả các entity
        foreach (var entity in modelBuilder.Model.GetEntityTypes())
        {
          
            entity.SetSchema(null);

           
            entity.SetTableName(entity.GetTableName().ToUpper());
            foreach (var property in entity.GetProperties())
            {
                property.SetColumnName(property.GetColumnName().ToUpper());
            }
        }


        modelBuilder.Entity<ArchiveNhanVien>(entity =>
        {
            entity.HasKey(e => e.ArchiveId).HasName("PK_ARCHIVE_NV");
            entity.Property(e => e.ArchivedAt)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<AuditLog>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_AUDIT_LOG");
            entity.Property(e => e.ActionTime)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<BacSi>(entity =>
        {
            entity.HasKey(e => e.MaBs).HasName("PK_BAC_SI");
            entity.HasOne(d => d.MaBsNavigation)
                .WithOne(p => p.BacSi)
                .HasConstraintName("FK_BACSI_NHANVIEN");
        });

        modelBuilder.Entity<BacSiArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<BenhNhan>(entity =>
        {
            entity.HasKey(e => e.MaBn).HasName("PK_BENH_NHAN");
        });

        modelBuilder.Entity<BenhNhanArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<BoPhan>(entity =>
        {
            entity.HasKey(e => e.MaBp).HasName("PK_BO_PHAN");
        });

        modelBuilder.Entity<BoPhanArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<CaTruc>(entity =>
        {
            entity.HasKey(e => e.MaCt).HasName("PK_CA_TRUC");
            entity.HasOne(d => d.NvtrucNavigation)
                .WithMany(p => p.CaTrucs)
                .HasConstraintName("FK_CATRUC_NHANVIEN");
        });

        modelBuilder.Entity<CaTrucArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<ChiTietPhieuKham>(entity =>
        {
            entity.HasKey(e => new { e.MaPk, e.MaTt }).HasName("PK_CT_PHIEUKHAM");
            entity.HasOne(d => d.MaPkNavigation)
                .WithMany()
                .HasConstraintName("FK_CTPK_PHIEUKHAM");
            entity.HasOne(d => d.MaTtNavigation)
                .WithMany()
                .HasConstraintName("FK_CTPK_THUTUC");
        });

        modelBuilder.Entity<ChiTietPhieuKhamArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<ChiTietPhieuNhap>(entity =>
        {
            entity.HasKey(e => new { e.MaPhieuNhap, e.MaThuoc }).HasName("PK_CT_PHIEUNHAP");
            entity.HasOne(d => d.MaPhieuNhapNavigation)
                .WithMany(p => p.ChiTietPhieuNhaps)
                .HasConstraintName("FK_CTPN_PHIEUNHAP");
            entity.HasOne(d => d.MaThuocNavigation)
                .WithMany(p => p.ChiTietPhieuNhaps)
                .HasConstraintName("FK_CTPN_THUOC");
        });

        modelBuilder.Entity<ChiTietPhieuNhapArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<ChiTietToaThuoc>(entity =>
        {
            entity.HasKey(e => new { e.MaToaThuoc, e.MaThuoc }).HasName("PK_CT_TOATHUOC");
            entity.HasOne(d => d.MaThuocNavigation)
                .WithMany()
                .HasConstraintName("FK_CTT_THUOC");
            entity.HasOne(d => d.MaToaThuocNavigation)
                .WithMany()
                .HasConstraintName("FK_CTT_TOATHUOC");
        });

        modelBuilder.Entity<ChiTietToaThuocArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<GiaBanThuoc>(entity =>
        {
            entity.HasKey(e => new { e.MaThuoc, e.NgayApDung }).HasName("PK_GIA_BAN");
            entity.HasOne(d => d.MaThuocNavigation)
                .WithMany(p => p.GiaBanThuocs)
                .HasConstraintName("FK_GIABAN_THUOC");
        });

        modelBuilder.Entity<GiaBanThuocArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<Luong>(entity =>
        {
            entity.HasKey(e => e.MaLuong).HasName("PK_LUONG");
            entity.HasOne(d => d.MaNvNavigation)
                .WithMany(p => p.Luongs)
                .HasConstraintName("FK_LUONG_NHANVIEN");
        });

        modelBuilder.Entity<LuongArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<NhanVien>(entity =>
        {
            entity.HasKey(e => e.MaNv).HasName("PK_NHAN_VIEN");
            entity.HasOne(d => d.MaPbNavigation)
                .WithMany(p => p.NhanViens)
                .HasConstraintName("FK_NV_PHONGBAN");
        });

        modelBuilder.Entity<PhieuKhamBenh>(entity =>
        {
            entity.HasKey(e => e.MaPk).HasName("PK_PHIEU_KHAM");
            entity.HasOne(d => d.BacsiNavigation)
                .WithMany(p => p.PhieuKhamBenhs)
                .HasConstraintName("FK_PK_BACSI");
            entity.HasOne(d => d.NguoiKhamNavigation)
                .WithMany(p => p.PhieuKhamBenhs)
                .HasConstraintName("FK_PK_BENHNHAN");
        });

        modelBuilder.Entity<PhieuKhamBenhArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<PhieuNhapThuoc>(entity =>
        {
            entity.HasKey(e => e.MaPhieuNhap).HasName("PK_PHIEU_NHAP");
            // Trigger sẽ được cài đặt trực tiếp trong Oracle
        });

        modelBuilder.Entity<PhieuNhapThuocArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<PhongBan>(entity =>
        {
            entity.HasKey(e => e.MaPb).HasName("PK_PHONG_BAN");
            entity.HasOne(d => d.MaBpNavigation)
                .WithMany(p => p.PhongBans)
                .HasConstraintName("FK_PB_BOPHAN");
        });

        modelBuilder.Entity<PhongBanArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<TaiKhoan>(entity =>
        {
            entity.HasKey(e => e.MaTk).HasName("PK_TAI_KHOAN");
            // Trigger sẽ được cài đặt trực tiếp trong Oracle
            entity.HasOne(d => d.MaNvNavigation)
                .WithOne(p => p.TaiKhoan)
                .HasConstraintName("FK_TK_NHANVIEN");
        });

        modelBuilder.Entity<TaiKhoanArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<ThuTuc>(entity =>
        {
            entity.HasKey(e => e.MaThuTuc).HasName("PK_THU_TUC");
        });

        modelBuilder.Entity<ThuTucArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<Thuoc>(entity =>
        {
            entity.HasKey(e => e.MaThuoc).HasName("PK_THUOC");
        });

        modelBuilder.Entity<ThuocArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        modelBuilder.Entity<ToaThuoc>(entity =>
        {
            entity.HasKey(e => e.MaToaThuoc).HasName("PK_TOA_THUOC");
            entity.HasOne(d => d.MaBacSiNavigation)
                .WithMany(p => p.ToaThuocs)
                .HasConstraintName("FK_TOATHUOC_BACSI");
        });

        modelBuilder.Entity<ToaThuocArchive>(entity =>
        {
            entity.Property(e => e.ArchiveDate)
                .HasColumnType("TIMESTAMP")
                .HasDefaultValueSql("SYSTIMESTAMP");
        });

        // 3. Cấu hình quan hệ đặc biệt
        modelBuilder.Entity<ToaThuoc>()
            .HasOne(t => t.MaPkNavigation)
            .WithOne(p => p.ToaThuoc)
            .HasForeignKey<ToaThuoc>(t => t.MaPk)
            .HasConstraintName("FK_TOATHUOC_PHIEUKHAM")
            .OnDelete(DeleteBehavior.Cascade);

        modelBuilder.Entity<ApplicationUser>()
            .HasOne(u => u.NhanVien)
            .WithOne(nv => nv.User)
            .HasForeignKey<ApplicationUser>(u => u.MaNv)
            .HasConstraintName("FK_USER_NHANVIEN")
            .OnDelete(DeleteBehavior.SetNull);

        // 4. Seed data
        SeedData(modelBuilder);
    }

    private void SeedData(ModelBuilder modelBuilder)
    {
        // BoPhan
        modelBuilder.Entity<BoPhan>().HasData(
            new BoPhan { MaBp = "BPQL", TenBoPhan = "Bộ phận quản lý" },
            new BoPhan { MaBp = "BPTTDP", TenBoPhan = "Bộ phận tiếp tân và điều phối" },
            new BoPhan { MaBp = "BPDT", TenBoPhan = "Bộ phận điều trị" },
            new BoPhan { MaBp = "BPTV", TenBoPhan = "Bộ phận tài vụ" },
            new BoPhan { MaBp = "BPKT", TenBoPhan = "Bộ phận kế toán" },
            new BoPhan { MaBp = "BPDNT", TenBoPhan = "Bộ phận dược – nhà thuốc" }
        );

        // PhongBan
        modelBuilder.Entity<PhongBan>().HasData(
            new PhongBan { MaPb = "PBQLNS", MaBp = "BPQL", TenPhongBan = "Phòng quản lý tài nguyên nhân sự", MoTa = null },
            new PhongBan { MaPb = "PBQLTV", MaBp = "BPQL", TenPhongBan = "Phòng quản lý tài vụ", MoTa = null },
            new PhongBan { MaPb = "PBQLCM", MaBp = "BPQL", TenPhongBan = "Phòng quản lý chuyên môn", MoTa = null },
            new PhongBan { MaPb = "PBTTDP", MaBp = "BPTTDP", TenPhongBan = "Phòng tiếp tân và điều phối", MoTa = null },
            new PhongBan { MaPb = "PBKN", MaBp = "BPDT", TenPhongBan = "Phòng khoa nội", MoTa = null },
            new PhongBan { MaPb = "PBKG", MaBp = "BPDT", TenPhongBan = "Phòng khoa ngoại", MoTa = null },
            new PhongBan { MaPb = "PBKNHI", MaBp = "BPDT", TenPhongBan = "Phòng khoa nhi", MoTa = null },
            new PhongBan { MaPb = "PBTTV", MaBp = "BPTV", TenPhongBan = "Phòng tài vụ", MoTa = null },
            new PhongBan { MaPb = "PBKT", MaBp = "BPKT", TenPhongBan = "Phòng kế toán", MoTa = null },
            new PhongBan { MaPb = "PBBT", MaBp = "BPDNT", TenPhongBan = "Phòng bán thuốc", MoTa = null }
        );

        // ThuTuc
        modelBuilder.Entity<ThuTuc>().HasData(
            new ThuTuc { MaThuTuc = "TT001", TenTuc = "Khám tổng quát", DonGia = 150000.00M },
            new ThuTuc { MaThuTuc = "TT002", TenTuc = "Xét nghiệm máu", DonGia = 80000.00M },
            new ThuTuc { MaThuTuc = "TT003", TenTuc = "Chụp X-quang phổi", DonGia = 120000.00M },
            new ThuTuc { MaThuTuc = "TT004", TenTuc = "Siêu âm bụng tổng quát", DonGia = 200000.00M },
            new ThuTuc { MaThuTuc = "TT005", TenTuc = "Đo điện tim (ECG)", DonGia = 100000.00M },
            new ThuTuc { MaThuTuc = "TT006", TenTuc = "Khám tai mũi họng", DonGia = 90000.00M },
            new ThuTuc { MaThuTuc = "TT007", TenTuc = "Nội soi dạ dày", DonGia = 350000.00M },
            new ThuTuc { MaThuTuc = "TT008", TenTuc = "Xét nghiệm nước tiểu", DonGia = 50000.00M },
            new ThuTuc { MaThuTuc = "TT009", TenTuc = "Tiêm ngừa cúm", DonGia = 70000.00M },
            new ThuTuc { MaThuTuc = "TT010", TenTuc = "Khám chuyên khoa tim mạch", DonGia = 250000.00M }
        );

        // Thuoc
        modelBuilder.Entity<Thuoc>().HasData(
            new Thuoc { MaThuoc = "TH001", TenThuoc = "Paracetamol 500mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH002", TenThuoc = "Amoxicillin 500mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH003", TenThuoc = "Vitamin C 500mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH004", TenThuoc = "Ibuprofen 200mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH005", TenThuoc = "Loratadine 10mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH006", TenThuoc = "Omeprazole 20mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH007", TenThuoc = "Salbutamol 2mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH008", TenThuoc = "Cefixime 200mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH009", TenThuoc = "Metronidazole 250mg", DonVi = "Vỉ" },
            new Thuoc { MaThuoc = "TH010", TenThuoc = "Dextromethorphan 15mg", DonVi = "Vỉ" }
        );

        modelBuilder.Entity<GiaBanThuoc>().HasData(
          new GiaBanThuoc { MaThuoc = "TH001", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 15000 },
          new GiaBanThuoc { MaThuoc = "TH002", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 35000 },
          new GiaBanThuoc { MaThuoc = "TH003", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 20000 },
          new GiaBanThuoc { MaThuoc = "TH004", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 18000 },
          new GiaBanThuoc { MaThuoc = "TH005", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 22000 },
          new GiaBanThuoc { MaThuoc = "TH006", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 28000 },
          new GiaBanThuoc { MaThuoc = "TH007", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 16000 },
          new GiaBanThuoc { MaThuoc = "TH008", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 40000 },
          new GiaBanThuoc { MaThuoc = "TH009", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 25000 },
          new GiaBanThuoc { MaThuoc = "TH010", NgayApDung = new DateTime(2025, 5, 1), GiaBan = 19000 }
        );

        // NhanVien
        modelBuilder.Entity<NhanVien>().HasData(
            new NhanVien
            {
                MaNv = "BS001",
                HoTenNv = "Nguyễn Hoàng Phong",
                NgaySinh = new DateTime(1980, 11, 15),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0987123456",
                MaPb = "PBKN"
            },
            new NhanVien
            {
                MaNv = "BS002",
                HoTenNv = "Nguyễn Quang Ngọc",
                NgaySinh = new DateTime(1975, 8, 22),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0912345678",
                MaPb = "PBKG"
            },
            new NhanVien
            {
                MaNv = "BS003",
                HoTenNv = "Nguyễn Trần Gia Huy",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBKNHI"
            },
            new NhanVien
            {
                MaNv = "NV001",
                HoTenNv = "Lê Nguyễn Minh Hoàng",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBQLNS"
            },
            new NhanVien
            {
                MaNv = "NV002",
                HoTenNv = "Phan Võ Anh Hào",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBQLTV"
            },
            new NhanVien
            {
                MaNv = "NV003",
                HoTenNv = "Quách Tuấn Anh",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBQLCM"
            },
            new NhanVien
            {
                MaNv = "NV004",
                HoTenNv = "Nguyễn Văn A",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBTTDP"
            },
            new NhanVien
            {
                MaNv = "NV005",
                HoTenNv = "Nguyễn Văn B",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBTTV"
            },
            new NhanVien
            {
                MaNv = "NV006",
                HoTenNv = "Trần Thị C",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nữ", // Đã sửa từ "Nam" thành "Nữ"
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBKT"
            },
            new NhanVien
            {
                MaNv = "NV007",
                HoTenNv = "Lê Văn D",
                NgaySinh = new DateTime(1982, 3, 30),
                GioiTinh = "Nam",
                DiaChi = "Hà Nội",
                Sdt = "0978123456",
                MaPb = "PBBT"
            }
        );

        // BacSi
        modelBuilder.Entity<BacSi>().HasData(
            new BacSi { MaBs = "BS001", TrinhDo = "Tiến sĩ Y khoa" },
            new BacSi { MaBs = "BS002", TrinhDo = "Phó Giáo sư, Tiến sĩ" },
            new BacSi { MaBs = "BS003", TrinhDo = "Bác sĩ Chuyên khoa II" }
        );
    }
}