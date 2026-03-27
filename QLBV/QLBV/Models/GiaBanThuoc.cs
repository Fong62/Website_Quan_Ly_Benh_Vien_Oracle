using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace QLBV.Models;

[PrimaryKey("MaThuoc", "NgayApDung")]
[Table("GiaBanThuoc")]
public partial class GiaBanThuoc
{
    [Key]
    [StringLength(50)]
    public string MaThuoc { get; set; } = null!;

    [Key]
    [Column(TypeName = "DATE")]
    public DateTime NgayApDung { get; set; }

    [Column(TypeName = "DECIMAL(10, 2)")]
    public decimal? GiaBan { get; set; }

    [ForeignKey("MaThuoc")]
    [InverseProperty("GiaBanThuocs")]
    public virtual Thuoc MaThuocNavigation { get; set; } = null!;
}