using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace QLBV.Migrations
{
    /// <inheritdoc />
    public partial class initial : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ARCHIVE_NHANVIEN",
                columns: table => new
                {
                    ARCHIVEID = table.Column<int>(type: "NUMBER(10)", nullable: false)
                        .Annotation("Oracle:Identity", "START WITH 1 INCREMENT BY 1"),
                    MANV = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    HOTENNV = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    NGAYSINH = table.Column<DateTime>(type: "DATE", nullable: true),
                    GIOITINH = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true),
                    DIACHI = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    SDT = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: true),
                    LOAINHANVIEN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    MAPB = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    ARCHIVEDAT = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ARCHIVE_NV", x => x.ARCHIVEID);
                });

            migrationBuilder.CreateTable(
                name: "ASPNETROLES",
                columns: table => new
                {
                    ID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    NAME = table.Column<string>(type: "NVARCHAR2(256)", maxLength: 256, nullable: true),
                    NORMALIZEDNAME = table.Column<string>(type: "NVARCHAR2(256)", maxLength: 256, nullable: true),
                    CONCURRENCYSTAMP = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ASPNETROLES", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "AUDIT_LOG",
                columns: table => new
                {
                    ID = table.Column<int>(type: "NUMBER(10)", nullable: false)
                        .Annotation("Oracle:Identity", "START WITH 1 INCREMENT BY 1"),
                    TABLENAME = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true),
                    RECORDID = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    ACTIONTIME = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    PERFORMEDBY = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AUDIT_LOG", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "BACSI_ARCHIVE",
                columns: table => new
                {
                    MABS = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TRINHDO = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "BENHNHAN",
                columns: table => new
                {
                    MABN = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    HOTENBN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    NGAYSINH = table.Column<DateTime>(type: "DATE", nullable: true),
                    DIACHI = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    SDT = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BENH_NHAN", x => x.MABN);
                });

            migrationBuilder.CreateTable(
                name: "BENHNHAN_ARCHIVE",
                columns: table => new
                {
                    MABN = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    HOTENBN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    NGAYSINH = table.Column<DateTime>(type: "DATE", nullable: true),
                    DIACHI = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    SDT = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "BOPHAN",
                columns: table => new
                {
                    MABP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    TENBOPHAN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BO_PHAN", x => x.MABP);
                });

            migrationBuilder.CreateTable(
                name: "BOPHAN_ARCHIVE",
                columns: table => new
                {
                    MABP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TENBOPHAN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "CATRUC_ARCHIVE",
                columns: table => new
                {
                    MACT = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    THOIGIANBT = table.Column<DateTime>(type: "TIMESTAMP", nullable: true),
                    THOIGIANKT = table.Column<DateTime>(type: "TIMESTAMP", nullable: true),
                    NVTRUC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "CHITIETPHIEUKHAM_ARCHIVE",
                columns: table => new
                {
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MATT = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    SOTIEN = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true),
                    TTTHANHTOAN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "CHITIETPHIEUNHAP_ARCHIVE",
                columns: table => new
                {
                    MAPHIEUNHAP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    SOLUONG = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    GIANHAP = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true),
                    HANSUDUNG = table.Column<DateTime>(type: "DATE", nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "CHITIETTOATHUOC_ARCHIVE",
                columns: table => new
                {
                    MATOATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    SOLUONG = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    LIEUDUNG = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "GIABANTHUOC_ARCHIVE",
                columns: table => new
                {
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    NGAYAPDUNG = table.Column<DateTime>(type: "DATE", nullable: true),
                    GIABAN = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "LUONG_ARCHIVE",
                columns: table => new
                {
                    MALUONG = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MANV = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    THANG = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    NAM = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    LUONGCOBAN = table.Column<decimal>(type: "DECIMAL(18,2)", nullable: true),
                    PHUCAP = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true),
                    NGAYCONG = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    TONGLUONG = table.Column<decimal>(type: "DECIMAL(20,2)", nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "PHIEUKHAMBENH_ARCHIVE",
                columns: table => new
                {
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TRIEUCHUNG = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    NGAYKHAM = table.Column<DateTime>(type: "DATE", nullable: true),
                    NGUOIKHAM = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    BACSI = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "PHIEUNHAPTHUOC",
                columns: table => new
                {
                    MAPHIEUNHAP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    NGAYNHAP = table.Column<DateTime>(type: "DATE", nullable: true),
                    NHACUNGCAP = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PHIEU_NHAP", x => x.MAPHIEUNHAP);
                });

            migrationBuilder.CreateTable(
                name: "PHIEUNHAPTHUOC_ARCHIVE",
                columns: table => new
                {
                    MAPHIEUNHAP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    NGAYNHAP = table.Column<DateTime>(type: "DATE", nullable: true),
                    NHACUNGCAP = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "PHONGBAN_ARCHIVE",
                columns: table => new
                {
                    MAPB = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MABP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TENPHONGBAN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    MOTA = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "SOKHAMBENH_ARCHIVE",
                columns: table => new
                {
                    MASOKHAM = table.Column<int>(type: "NUMBER(10)", maxLength: 50, nullable: false)
                        .Annotation("Oracle:Identity", "START WITH 1 INCREMENT BY 1"),
                    MABN = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SOKHAMBENH_ARCHIVE", x => x.MASOKHAM);
                });

            migrationBuilder.CreateTable(
                name: "TAIKHOAN_ARCHIVE",
                columns: table => new
                {
                    MATK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MANV = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TENDN = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MK = table.Column<byte[]>(type: "RAW(255)", maxLength: 255, nullable: true),
                    LOAITK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "THUOC",
                columns: table => new
                {
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    TENTHUOC = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    DONVI = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_THUOC", x => x.MATHUOC);
                });

            migrationBuilder.CreateTable(
                name: "THUOC_ARCHIVE",
                columns: table => new
                {
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TENTHUOC = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    DONVI = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "THUTUC",
                columns: table => new
                {
                    MATHUTUC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    TENTUC = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    DONGIA = table.Column<decimal>(type: "decimal(10,2)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_THU_TUC", x => x.MATHUTUC);
                });

            migrationBuilder.CreateTable(
                name: "THUTUC_ARCHIVE",
                columns: table => new
                {
                    MATHUTUC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TENTUC = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    DONGIA = table.Column<decimal>(type: "decimal(10,2)", nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "TOATHUOC_ARCHIVE",
                columns: table => new
                {
                    MATOATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MABACSI = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    NGAYKE = table.Column<string>(type: "NVARCHAR2(10)", nullable: true),
                    TONGTIEN = table.Column<decimal>(type: "decimal(10,2)", nullable: true),
                    ARCHIVEDATE = table.Column<DateTime>(type: "TIMESTAMP", nullable: true, defaultValueSql: "SYSTIMESTAMP"),
                    ACTIONTYPE = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                });

            migrationBuilder.CreateTable(
                name: "ASPNETROLECLAIMS",
                columns: table => new
                {
                    ID = table.Column<int>(type: "NUMBER(10)", nullable: false)
                        .Annotation("Oracle:Identity", "START WITH 1 INCREMENT BY 1"),
                    ROLEID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    CLAIMTYPE = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    CLAIMVALUE = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ASPNETROLECLAIMS", x => x.ID);
                    table.ForeignKey(
                        name: "FK_ASPNETROLECLAIMS_ASPNETROLES_ROLEID",
                        column: x => x.ROLEID,
                        principalTable: "ASPNETROLES",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "SOKHAMBENH",
                columns: table => new
                {
                    MASOKHAM = table.Column<int>(type: "NUMBER(10)", nullable: false)
                        .Annotation("Oracle:Identity", "START WITH 1 INCREMENT BY 1"),
                    MABN = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SOKHAMBENH", x => x.MASOKHAM);
                    table.ForeignKey(
                        name: "FK_SOKHAMBENH_BENHNHAN_MABN",
                        column: x => x.MABN,
                        principalTable: "BENHNHAN",
                        principalColumn: "MABN");
                });

            migrationBuilder.CreateTable(
                name: "PHONGBAN",
                columns: table => new
                {
                    MAPB = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    MABP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TENPHONGBAN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    MOTA = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PHONG_BAN", x => x.MAPB);
                    table.ForeignKey(
                        name: "FK_PB_BOPHAN",
                        column: x => x.MABP,
                        principalTable: "BOPHAN",
                        principalColumn: "MABP");
                });

            migrationBuilder.CreateTable(
                name: "CHITIETPHIEUNHAP",
                columns: table => new
                {
                    MAPHIEUNHAP = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    SOLUONG = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    GIANHAP = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true),
                    HANSUDUNG = table.Column<DateTime>(type: "DATE", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CT_PHIEUNHAP", x => new { x.MAPHIEUNHAP, x.MATHUOC });
                    table.ForeignKey(
                        name: "FK_CTPN_PHIEUNHAP",
                        column: x => x.MAPHIEUNHAP,
                        principalTable: "PHIEUNHAPTHUOC",
                        principalColumn: "MAPHIEUNHAP",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CTPN_THUOC",
                        column: x => x.MATHUOC,
                        principalTable: "THUOC",
                        principalColumn: "MATHUOC",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "GIABANTHUOC",
                columns: table => new
                {
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    NGAYAPDUNG = table.Column<DateTime>(type: "DATE", nullable: false),
                    GIABAN = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GIA_BAN", x => new { x.MATHUOC, x.NGAYAPDUNG });
                    table.ForeignKey(
                        name: "FK_GIABAN_THUOC",
                        column: x => x.MATHUOC,
                        principalTable: "THUOC",
                        principalColumn: "MATHUOC",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "NHANVIEN",
                columns: table => new
                {
                    MANV = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    HOTENNV = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    NGAYSINH = table.Column<DateTime>(type: "DATE", nullable: true),
                    GIOITINH = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true),
                    DIACHI = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    SDT = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: true),
                    MAPB = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NHAN_VIEN", x => x.MANV);
                    table.ForeignKey(
                        name: "FK_NV_PHONGBAN",
                        column: x => x.MAPB,
                        principalTable: "PHONGBAN",
                        principalColumn: "MAPB");
                });

            migrationBuilder.CreateTable(
                name: "ASPNETUSERS",
                columns: table => new
                {
                    ID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    MANV = table.Column<string>(type: "NVARCHAR2(50)", nullable: true),
                    USERNAME = table.Column<string>(type: "NVARCHAR2(256)", maxLength: 256, nullable: true),
                    NORMALIZEDUSERNAME = table.Column<string>(type: "NVARCHAR2(256)", maxLength: 256, nullable: true),
                    EMAIL = table.Column<string>(type: "NVARCHAR2(256)", maxLength: 256, nullable: true),
                    NORMALIZEDEMAIL = table.Column<string>(type: "NVARCHAR2(256)", maxLength: 256, nullable: true),
                    EMAILCONFIRMED = table.Column<bool>(type: "NUMBER(1)", nullable: false),
                    PASSWORDHASH = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    SECURITYSTAMP = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    CONCURRENCYSTAMP = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    PHONENUMBER = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    PHONENUMBERCONFIRMED = table.Column<bool>(type: "NUMBER(1)", nullable: false),
                    TWOFACTORENABLED = table.Column<bool>(type: "NUMBER(1)", nullable: false),
                    LOCKOUTEND = table.Column<DateTimeOffset>(type: "TIMESTAMP(7) WITH TIME ZONE", nullable: true),
                    LOCKOUTENABLED = table.Column<bool>(type: "NUMBER(1)", nullable: false),
                    ACCESSFAILEDCOUNT = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ASPNETUSERS", x => x.ID);
                    table.ForeignKey(
                        name: "FK_USER_NHANVIEN",
                        column: x => x.MANV,
                        principalTable: "NHANVIEN",
                        principalColumn: "MANV",
                        onDelete: ReferentialAction.SetNull);
                });

            migrationBuilder.CreateTable(
                name: "BACSI",
                columns: table => new
                {
                    MABS = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    TRINHDO = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BAC_SI", x => x.MABS);
                    table.ForeignKey(
                        name: "FK_BACSI_NHANVIEN",
                        column: x => x.MABS,
                        principalTable: "NHANVIEN",
                        principalColumn: "MANV",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CATRUC",
                columns: table => new
                {
                    MACT = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    THOIGIANBT = table.Column<DateTime>(type: "TIMESTAMP", nullable: true),
                    THOIGIANKT = table.Column<DateTime>(type: "TIMESTAMP", nullable: true),
                    NVTRUC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CA_TRUC", x => x.MACT);
                    table.ForeignKey(
                        name: "FK_CATRUC_NHANVIEN",
                        column: x => x.NVTRUC,
                        principalTable: "NHANVIEN",
                        principalColumn: "MANV");
                });

            migrationBuilder.CreateTable(
                name: "LUONG",
                columns: table => new
                {
                    MALUONG = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    MANV = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    THANG = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    NAM = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    LUONGCOBAN = table.Column<decimal>(type: "DECIMAL(18,2)", nullable: true),
                    PHUCAP = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true),
                    NGAYCONG = table.Column<int>(type: "NUMBER(10)", nullable: true),
                    TONGLUONG = table.Column<decimal>(type: "DECIMAL(20,2)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LUONG", x => x.MALUONG);
                    table.ForeignKey(
                        name: "FK_LUONG_NHANVIEN",
                        column: x => x.MANV,
                        principalTable: "NHANVIEN",
                        principalColumn: "MANV");
                });

            migrationBuilder.CreateTable(
                name: "TAIKHOAN",
                columns: table => new
                {
                    MATK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    MANV = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    TENDN = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MK = table.Column<byte[]>(type: "RAW(255)", maxLength: 255, nullable: true),
                    LOAITK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TAI_KHOAN", x => x.MATK);
                    table.ForeignKey(
                        name: "FK_TK_NHANVIEN",
                        column: x => x.MANV,
                        principalTable: "NHANVIEN",
                        principalColumn: "MANV");
                });

            migrationBuilder.CreateTable(
                name: "ASPNETUSERCLAIMS",
                columns: table => new
                {
                    ID = table.Column<int>(type: "NUMBER(10)", nullable: false)
                        .Annotation("Oracle:Identity", "START WITH 1 INCREMENT BY 1"),
                    USERID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    CLAIMTYPE = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    CLAIMVALUE = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ASPNETUSERCLAIMS", x => x.ID);
                    table.ForeignKey(
                        name: "FK_ASPNETUSERCLAIMS_ASPNETUSERS_USERID",
                        column: x => x.USERID,
                        principalTable: "ASPNETUSERS",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ASPNETUSERLOGINS",
                columns: table => new
                {
                    LOGINPROVIDER = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    PROVIDERKEY = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    PROVIDERDISPLAYNAME = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    USERID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ASPNETUSERLOGINS", x => new { x.LOGINPROVIDER, x.PROVIDERKEY });
                    table.ForeignKey(
                        name: "FK_ASPNETUSERLOGINS_ASPNETUSERS_USERID",
                        column: x => x.USERID,
                        principalTable: "ASPNETUSERS",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ASPNETUSERROLES",
                columns: table => new
                {
                    USERID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    ROLEID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ASPNETUSERROLES", x => new { x.USERID, x.ROLEID });
                    table.ForeignKey(
                        name: "FK_ASPNETUSERROLES_ASPNETROLES_ROLEID",
                        column: x => x.ROLEID,
                        principalTable: "ASPNETROLES",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ASPNETUSERROLES_ASPNETUSERS_USERID",
                        column: x => x.USERID,
                        principalTable: "ASPNETUSERS",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ASPNETUSERTOKENS",
                columns: table => new
                {
                    USERID = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    LOGINPROVIDER = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    NAME = table.Column<string>(type: "NVARCHAR2(450)", nullable: false),
                    VALUE = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ASPNETUSERTOKENS", x => new { x.USERID, x.LOGINPROVIDER, x.NAME });
                    table.ForeignKey(
                        name: "FK_ASPNETUSERTOKENS_ASPNETUSERS_USERID",
                        column: x => x.USERID,
                        principalTable: "ASPNETUSERS",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "PHIEUKHAMBENH",
                columns: table => new
                {
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    TRIEUCHUNG = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true),
                    NGAYKHAM = table.Column<DateTime>(type: "DATE", nullable: true),
                    NGUOIKHAM = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    BACSI = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    MASOKHAM = table.Column<int>(type: "NUMBER(10)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PHIEU_KHAM", x => x.MAPK);
                    table.ForeignKey(
                        name: "FK_PHIEUKHAMBENH_SOKHAMBENH_MASOKHAM",
                        column: x => x.MASOKHAM,
                        principalTable: "SOKHAMBENH",
                        principalColumn: "MASOKHAM");
                    table.ForeignKey(
                        name: "FK_PK_BACSI",
                        column: x => x.BACSI,
                        principalTable: "BACSI",
                        principalColumn: "MABS");
                    table.ForeignKey(
                        name: "FK_PK_BENHNHAN",
                        column: x => x.NGUOIKHAM,
                        principalTable: "BENHNHAN",
                        principalColumn: "MABN");
                });

            migrationBuilder.CreateTable(
                name: "CHITIETPHIEUKHAM",
                columns: table => new
                {
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    MATT = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    SOTIEN = table.Column<decimal>(type: "DECIMAL(10,2)", nullable: true),
                    TTTHANHTOAN = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CT_PHIEUKHAM", x => new { x.MAPK, x.MATT });
                    table.ForeignKey(
                        name: "FK_CTPK_PHIEUKHAM",
                        column: x => x.MAPK,
                        principalTable: "PHIEUKHAMBENH",
                        principalColumn: "MAPK",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CTPK_THUTUC",
                        column: x => x.MATT,
                        principalTable: "THUTUC",
                        principalColumn: "MATHUTUC",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "TOATHUOC",
                columns: table => new
                {
                    MATOATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    MABACSI = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    NGAYKE = table.Column<string>(type: "NVARCHAR2(10)", nullable: true),
                    TONGTIEN = table.Column<decimal>(type: "decimal(10,2)", nullable: true),
                    MAPK = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TOA_THUOC", x => x.MATOATHUOC);
                    table.ForeignKey(
                        name: "FK_TOATHUOC_BACSI",
                        column: x => x.MABACSI,
                        principalTable: "BACSI",
                        principalColumn: "MABS");
                    table.ForeignKey(
                        name: "FK_TOATHUOC_PHIEUKHAM",
                        column: x => x.MAPK,
                        principalTable: "PHIEUKHAMBENH",
                        principalColumn: "MAPK",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CHITIETTOATHUOC",
                columns: table => new
                {
                    MATOATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    MATHUOC = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: false),
                    SOLUONG = table.Column<string>(type: "NVARCHAR2(50)", maxLength: 50, nullable: true),
                    LIEUDUNG = table.Column<string>(type: "NVARCHAR2(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CT_TOATHUOC", x => new { x.MATOATHUOC, x.MATHUOC });
                    table.ForeignKey(
                        name: "FK_CTT_THUOC",
                        column: x => x.MATHUOC,
                        principalTable: "THUOC",
                        principalColumn: "MATHUOC",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CTT_TOATHUOC",
                        column: x => x.MATOATHUOC,
                        principalTable: "TOATHUOC",
                        principalColumn: "MATOATHUOC",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "BOPHAN",
                columns: new[] { "MABP", "TENBOPHAN" },
                values: new object[,]
                {
                    { "BPDNT", "Bộ phận dược – nhà thuốc" },
                    { "BPDT", "Bộ phận điều trị" },
                    { "BPKT", "Bộ phận kế toán" },
                    { "BPQL", "Bộ phận quản lý" },
                    { "BPTTDP", "Bộ phận tiếp tân và điều phối" },
                    { "BPTV", "Bộ phận tài vụ" }
                });

            migrationBuilder.InsertData(
                table: "THUOC",
                columns: new[] { "MATHUOC", "DONVI", "TENTHUOC" },
                values: new object[,]
                {
                    { "TH001", "Vỉ", "Paracetamol 500mg" },
                    { "TH002", "Vỉ", "Amoxicillin 500mg" },
                    { "TH003", "Vỉ", "Vitamin C 500mg" },
                    { "TH004", "Vỉ", "Ibuprofen 200mg" },
                    { "TH005", "Vỉ", "Loratadine 10mg" },
                    { "TH006", "Vỉ", "Omeprazole 20mg" },
                    { "TH007", "Vỉ", "Salbutamol 2mg" },
                    { "TH008", "Vỉ", "Cefixime 200mg" },
                    { "TH009", "Vỉ", "Metronidazole 250mg" },
                    { "TH010", "Vỉ", "Dextromethorphan 15mg" }
                });

            migrationBuilder.InsertData(
                table: "THUTUC",
                columns: new[] { "MATHUTUC", "DONGIA", "TENTUC" },
                values: new object[,]
                {
                    { "TT001", 150000.00m, "Khám tổng quát" },
                    { "TT002", 80000.00m, "Xét nghiệm máu" },
                    { "TT003", 120000.00m, "Chụp X-quang phổi" },
                    { "TT004", 200000.00m, "Siêu âm bụng tổng quát" },
                    { "TT005", 100000.00m, "Đo điện tim (ECG)" },
                    { "TT006", 90000.00m, "Khám tai mũi họng" },
                    { "TT007", 350000.00m, "Nội soi dạ dày" },
                    { "TT008", 50000.00m, "Xét nghiệm nước tiểu" },
                    { "TT009", 70000.00m, "Tiêm ngừa cúm" },
                    { "TT010", 250000.00m, "Khám chuyên khoa tim mạch" }
                });

            migrationBuilder.InsertData(
                table: "GIABANTHUOC",
                columns: new[] { "MATHUOC", "NGAYAPDUNG", "GIABAN" },
                values: new object[,]
                {
                    { "TH001", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 15000m },
                    { "TH002", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 35000m },
                    { "TH003", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 20000m },
                    { "TH004", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 18000m },
                    { "TH005", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 22000m },
                    { "TH006", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 28000m },
                    { "TH007", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 16000m },
                    { "TH008", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 40000m },
                    { "TH009", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 25000m },
                    { "TH010", new DateTime(2025, 5, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), 19000m }
                });

            migrationBuilder.InsertData(
                table: "PHONGBAN",
                columns: new[] { "MAPB", "MABP", "MOTA", "TENPHONGBAN" },
                values: new object[,]
                {
                    { "PBBT", "BPDNT", null, "Phòng bán thuốc" },
                    { "PBKG", "BPDT", null, "Phòng khoa ngoại" },
                    { "PBKN", "BPDT", null, "Phòng khoa nội" },
                    { "PBKNHI", "BPDT", null, "Phòng khoa nhi" },
                    { "PBKT", "BPKT", null, "Phòng kế toán" },
                    { "PBQLCM", "BPQL", null, "Phòng quản lý chuyên môn" },
                    { "PBQLNS", "BPQL", null, "Phòng quản lý tài nguyên nhân sự" },
                    { "PBQLTV", "BPQL", null, "Phòng quản lý tài vụ" },
                    { "PBTTDP", "BPTTDP", null, "Phòng tiếp tân và điều phối" },
                    { "PBTTV", "BPTV", null, "Phòng tài vụ" }
                });

            migrationBuilder.InsertData(
                table: "NHANVIEN",
                columns: new[] { "MANV", "DIACHI", "GIOITINH", "HOTENNV", "MAPB", "NGAYSINH", "SDT" },
                values: new object[,]
                {
                    { "BS001", "Hà Nội", "Nam", "Nguyễn Hoàng Phong", "PBKN", new DateTime(1980, 11, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), "0987123456" },
                    { "BS002", "Hà Nội", "Nam", "Nguyễn Quang Ngọc", "PBKG", new DateTime(1975, 8, 22, 0, 0, 0, 0, DateTimeKind.Unspecified), "0912345678" },
                    { "BS003", "Hà Nội", "Nam", "Nguyễn Trần Gia Huy", "PBKNHI", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" },
                    { "NV001", "Hà Nội", "Nam", "Lê Nguyễn Minh Hoàng", "PBQLNS", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" },
                    { "NV002", "Hà Nội", "Nam", "Phan Võ Anh Hào", "PBQLTV", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" },
                    { "NV003", "Hà Nội", "Nam", "Quách Tuấn Anh", "PBQLCM", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" },
                    { "NV004", "Hà Nội", "Nam", "Nguyễn Văn A", "PBTTDP", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" },
                    { "NV005", "Hà Nội", "Nam", "Nguyễn Văn B", "PBTTV", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" },
                    { "NV006", "Hà Nội", "Nữ", "Trần Thị C", "PBKT", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" },
                    { "NV007", "Hà Nội", "Nam", "Lê Văn D", "PBBT", new DateTime(1982, 3, 30, 0, 0, 0, 0, DateTimeKind.Unspecified), "0978123456" }
                });

            migrationBuilder.InsertData(
                table: "BACSI",
                columns: new[] { "MABS", "TRINHDO" },
                values: new object[,]
                {
                    { "BS001", "Tiến sĩ Y khoa" },
                    { "BS002", "Phó Giáo sư, Tiến sĩ" },
                    { "BS003", "Bác sĩ Chuyên khoa II" }
                });

            migrationBuilder.CreateIndex(
                name: "IX_ASPNETROLECLAIMS_ROLEID",
                table: "ASPNETROLECLAIMS",
                column: "ROLEID");

            migrationBuilder.CreateIndex(
                name: "RoleNameIndex",
                table: "ASPNETROLES",
                column: "NORMALIZEDNAME",
                unique: true,
                filter: "\"NORMALIZEDNAME\" IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_ASPNETUSERCLAIMS_USERID",
                table: "ASPNETUSERCLAIMS",
                column: "USERID");

            migrationBuilder.CreateIndex(
                name: "IX_ASPNETUSERLOGINS_USERID",
                table: "ASPNETUSERLOGINS",
                column: "USERID");

            migrationBuilder.CreateIndex(
                name: "IX_ASPNETUSERROLES_ROLEID",
                table: "ASPNETUSERROLES",
                column: "ROLEID");

            migrationBuilder.CreateIndex(
                name: "EmailIndex",
                table: "ASPNETUSERS",
                column: "NORMALIZEDEMAIL");

            migrationBuilder.CreateIndex(
                name: "IX_ASPNETUSERS_MANV",
                table: "ASPNETUSERS",
                column: "MANV",
                unique: true,
                filter: "\"MANV\" IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "UserNameIndex",
                table: "ASPNETUSERS",
                column: "NORMALIZEDUSERNAME",
                unique: true,
                filter: "\"NORMALIZEDUSERNAME\" IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_CATRUC_NVTRUC",
                table: "CATRUC",
                column: "NVTRUC");

            migrationBuilder.CreateIndex(
                name: "IX_CHITIETPHIEUKHAM_MATT",
                table: "CHITIETPHIEUKHAM",
                column: "MATT");

            migrationBuilder.CreateIndex(
                name: "IX_CHITIETPHIEUNHAP_MATHUOC",
                table: "CHITIETPHIEUNHAP",
                column: "MATHUOC");

            migrationBuilder.CreateIndex(
                name: "IX_CHITIETTOATHUOC_MATHUOC",
                table: "CHITIETTOATHUOC",
                column: "MATHUOC");

            migrationBuilder.CreateIndex(
                name: "IX_LUONG_MANV",
                table: "LUONG",
                column: "MANV");

            migrationBuilder.CreateIndex(
                name: "IX_NHANVIEN_MAPB",
                table: "NHANVIEN",
                column: "MAPB");

            migrationBuilder.CreateIndex(
                name: "IX_PHIEUKHAMBENH_BACSI",
                table: "PHIEUKHAMBENH",
                column: "BACSI");

            migrationBuilder.CreateIndex(
                name: "IX_PHIEUKHAMBENH_MASOKHAM",
                table: "PHIEUKHAMBENH",
                column: "MASOKHAM");

            migrationBuilder.CreateIndex(
                name: "IX_PHIEUKHAMBENH_NGUOIKHAM",
                table: "PHIEUKHAMBENH",
                column: "NGUOIKHAM");

            migrationBuilder.CreateIndex(
                name: "IX_PHONGBAN_MABP",
                table: "PHONGBAN",
                column: "MABP");

            migrationBuilder.CreateIndex(
                name: "IX_SOKHAMBENH_MABN",
                table: "SOKHAMBENH",
                column: "MABN");

            migrationBuilder.CreateIndex(
                name: "UQ__TaiKhoan__2725D70B0150A028",
                table: "TAIKHOAN",
                column: "MANV",
                unique: true,
                filter: "\"MANV\" IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_TOATHUOC_MABACSI",
                table: "TOATHUOC",
                column: "MABACSI");

            migrationBuilder.CreateIndex(
                name: "IX_TOATHUOC_MAPK",
                table: "TOATHUOC",
                column: "MAPK",
                unique: true,
                filter: "\"MAPK\" IS NOT NULL");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ARCHIVE_NHANVIEN");

            migrationBuilder.DropTable(
                name: "ASPNETROLECLAIMS");

            migrationBuilder.DropTable(
                name: "ASPNETUSERCLAIMS");

            migrationBuilder.DropTable(
                name: "ASPNETUSERLOGINS");

            migrationBuilder.DropTable(
                name: "ASPNETUSERROLES");

            migrationBuilder.DropTable(
                name: "ASPNETUSERTOKENS");

            migrationBuilder.DropTable(
                name: "AUDIT_LOG");

            migrationBuilder.DropTable(
                name: "BACSI_ARCHIVE");

            migrationBuilder.DropTable(
                name: "BENHNHAN_ARCHIVE");

            migrationBuilder.DropTable(
                name: "BOPHAN_ARCHIVE");

            migrationBuilder.DropTable(
                name: "CATRUC");

            migrationBuilder.DropTable(
                name: "CATRUC_ARCHIVE");

            migrationBuilder.DropTable(
                name: "CHITIETPHIEUKHAM");

            migrationBuilder.DropTable(
                name: "CHITIETPHIEUKHAM_ARCHIVE");

            migrationBuilder.DropTable(
                name: "CHITIETPHIEUNHAP");

            migrationBuilder.DropTable(
                name: "CHITIETPHIEUNHAP_ARCHIVE");

            migrationBuilder.DropTable(
                name: "CHITIETTOATHUOC");

            migrationBuilder.DropTable(
                name: "CHITIETTOATHUOC_ARCHIVE");

            migrationBuilder.DropTable(
                name: "GIABANTHUOC");

            migrationBuilder.DropTable(
                name: "GIABANTHUOC_ARCHIVE");

            migrationBuilder.DropTable(
                name: "LUONG");

            migrationBuilder.DropTable(
                name: "LUONG_ARCHIVE");

            migrationBuilder.DropTable(
                name: "PHIEUKHAMBENH_ARCHIVE");

            migrationBuilder.DropTable(
                name: "PHIEUNHAPTHUOC_ARCHIVE");

            migrationBuilder.DropTable(
                name: "PHONGBAN_ARCHIVE");

            migrationBuilder.DropTable(
                name: "SOKHAMBENH_ARCHIVE");

            migrationBuilder.DropTable(
                name: "TAIKHOAN");

            migrationBuilder.DropTable(
                name: "TAIKHOAN_ARCHIVE");

            migrationBuilder.DropTable(
                name: "THUOC_ARCHIVE");

            migrationBuilder.DropTable(
                name: "THUTUC_ARCHIVE");

            migrationBuilder.DropTable(
                name: "TOATHUOC_ARCHIVE");

            migrationBuilder.DropTable(
                name: "ASPNETROLES");

            migrationBuilder.DropTable(
                name: "ASPNETUSERS");

            migrationBuilder.DropTable(
                name: "THUTUC");

            migrationBuilder.DropTable(
                name: "PHIEUNHAPTHUOC");

            migrationBuilder.DropTable(
                name: "TOATHUOC");

            migrationBuilder.DropTable(
                name: "THUOC");

            migrationBuilder.DropTable(
                name: "PHIEUKHAMBENH");

            migrationBuilder.DropTable(
                name: "SOKHAMBENH");

            migrationBuilder.DropTable(
                name: "BACSI");

            migrationBuilder.DropTable(
                name: "BENHNHAN");

            migrationBuilder.DropTable(
                name: "NHANVIEN");

            migrationBuilder.DropTable(
                name: "PHONGBAN");

            migrationBuilder.DropTable(
                name: "BOPHAN");
        }
    }
}
