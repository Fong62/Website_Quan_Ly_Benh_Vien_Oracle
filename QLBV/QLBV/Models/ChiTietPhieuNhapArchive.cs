using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace QLBV.Models;

[Keyless]
[Table("ChiTietPhieuNhap_Archive")]
public partial class ChiTietPhieuNhapArchive
{
    [StringLength(50)]
    public string? MaPhieuNhap { get; set; }

    [StringLength(50)]
    public string? MaThuoc { get; set; }

    public int? SoLuong { get; set; }

    [Column(TypeName = "DECIMAL(10, 2)")]
    public decimal? GiaNhap { get; set; }

    [Column(TypeName = "DATE")]
    public DateTime? HanSuDung { get; set; }

    [Column(TypeName = "TIMESTAMP")]
    public DateTime? ArchiveDate { get; set; }

    [StringLength(10)]
    public string? ActionType { get; set; }
}