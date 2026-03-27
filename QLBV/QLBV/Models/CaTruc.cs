using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace QLBV.Models;

[Table("CaTruc")]
public partial class CaTruc
{
    [Key]
    [Column("MaCT")]
    [StringLength(50)]
    public string MaCt { get; set; } = null!;

    [Column("ThoiGianBT", TypeName = "TIMESTAMP")]
    public DateTime? ThoiGianBt { get; set; }

    [Column("ThoiGianKT", TypeName = "TIMESTAMP")]
    public DateTime? ThoiGianKt { get; set; }

    [Column("NVtruc")]
    [StringLength(50)]
    public string? Nvtruc { get; set; }

    [ForeignKey("Nvtruc")]
    [InverseProperty("CaTrucs")]
    public virtual NhanVien? NvtrucNavigation { get; set; }
}