//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebSiteBanDienThoaiDiDong.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblPhieuXuat
    {
        public int SoPX { get; set; }
        public int MaKH { get; set; }
        public Nullable<System.DateTime> NgayXuat { get; set; }
        public string DiaChiGiao { get; set; }
        public Nullable<decimal> TongTien { get; set; }
        public Nullable<int> MaNV { get; set; }
    
        public virtual tblKhachHang tblKhachHang { get; set; }
        public virtual tblNguoiBan tblNguoiBan { get; set; }
    }
}