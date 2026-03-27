using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace QLBV.Models;

[Table("Luong")]
public partial class Luong
{
    [Key]
    [StringLength(50)]
    public string MaLuong { get; set; } = null!;

    [Column("MaNV")]
    [StringLength(50)]
    public string? MaNv { get; set; }

    public int? Thang { get; set; }

    public int? Nam { get; set; }

    [Column(TypeName = "DECIMAL(18, 2)")]
    public decimal? LuongCoBan { get; set; }

    [Column(TypeName = "DECIMAL(10, 2)")]
    public decimal? PhuCap { get; set; }

    public int? NgayCong { get; set; }

    [Column(TypeName = "DECIMAL(20, 2)")]
    public decimal? TongLuong { get; set; }

    [ForeignKey("MaNv")]
    [InverseProperty("Luongs")]
    public virtual NhanVien? MaNvNavigation { get; set; }
}