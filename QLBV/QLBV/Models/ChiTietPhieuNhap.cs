using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace QLBV.Models;

[PrimaryKey("MaPhieuNhap", "MaThuoc")]
[Table("ChiTietPhieuNhap")]
public partial class ChiTietPhieuNhap
{
    [Key]
    [StringLength(50)]
    public string MaPhieuNhap { get; set; } = null!;

    [Key]
    [StringLength(50)]
    public string MaThuoc { get; set; } = null!;

    public int? SoLuong { get; set; }

    [Column(TypeName = "DECIMAL(10, 2)")]
    public decimal? GiaNhap { get; set; }

    [Column(TypeName = "DATE")]
    public DateTime? HanSuDung { get; set; }

    [ForeignKey("MaPhieuNhap")]
    [InverseProperty("ChiTietPhieuNhaps")]
    public virtual PhieuNhapThuoc MaPhieuNhapNavigation { get; set; } = null!;

    [ForeignKey("MaThuoc")]
    [InverseProperty("ChiTietPhieuNhaps")]
    public virtual Thuoc MaThuocNavigation { get; set; } = null!;
}