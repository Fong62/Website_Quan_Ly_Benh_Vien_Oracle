using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Oracle.ManagedDataAccess.Client;
using QLBV.Models;
using System.Data;

namespace QLBV.Models.InterfaceRepository
{
    public class NhanVienRepository : InterfaceNhanVien
    {
        private readonly QLBVContext _context;

        public NhanVienRepository(QLBVContext context)
        {
            _context = context;
        }

        public async Task UpdateNhanVien(NhanVien nhanVien)
        {
            var parameters = new[]
            {
                new OracleParameter("p_MaNV", OracleDbType.NVarchar2, nhanVien.MaNv, ParameterDirection.Input),
                new OracleParameter("p_HoTenNV", OracleDbType.NVarchar2, nhanVien.HoTenNv, ParameterDirection.Input),
                new OracleParameter("p_NgaySinh", OracleDbType.Date, nhanVien.NgaySinh, ParameterDirection.Input),
                new OracleParameter("p_GioiTinh", OracleDbType.NVarchar2, nhanVien.GioiTinh, ParameterDirection.Input),
                new OracleParameter("p_DiaChi", OracleDbType.NVarchar2, nhanVien.DiaChi, ParameterDirection.Input),
                new OracleParameter("p_SDT", OracleDbType.NVarchar2, nhanVien.Sdt, ParameterDirection.Input),
                new OracleParameter("p_MaPB", OracleDbType.NVarchar2, nhanVien.MaPb, ParameterDirection.Input)
            };

            await _context.Database.ExecuteSqlRawAsync(
                "BEGIN sp_UpdateNhanVien(:p_MaNV, :p_HoTenNV, :p_NgaySinh, :p_GioiTinh, :p_DiaChi, :p_SDT, :p_MaPB); END;",
                parameters
            );
        }

        public async Task<NhanVien> LayNhanVienById(string maNV)
        {
            return await _context.NhanViens
                .Include(nv => nv.MaPbNavigation)
                .FirstOrDefaultAsync(nv => nv.MaNv == maNV);
        }

        public async Task<List<NhanVien>> LayNhanVien()
        {
            return await _context.NhanViens
                .Include(nv => nv.MaPbNavigation)
                .ToListAsync();
        }

        public async Task<List<PhongBan>> LayPhongBan()
        {
            return await _context.PhongBans.ToListAsync();
        }
    }
}