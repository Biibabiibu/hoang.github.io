using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Drawing;
using WebSiteBanDienThoaiDiDong.ThaoTac;

namespace WebSiteBanDienThoaiDiDong
{
    public partial class TrangChuMaster : System.Web.UI.MasterPage
    {
        ThaoTacCSDL dl = new ThaoTacCSDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ShoppingCart.Instance.Products.Count.ToString() == null)
            { lSoHang.Text = "0"; lTongTien.Text = "0"; }
            else
            {
                lSoHang.Text = ShoppingCart.Instance.Products.Count.ToString();
                lTongTien.Text = string.Format("{0:n0}", ShoppingCart.Instance.TongThanhTien);
            }
            if (Session["TenTK"] != null)
            {
                divSotien.Visible = true;
                string sqlSotien = string.Format("select sotien from tblKhachHang where taikhoan = '{0}' ", Session["TenTK"].ToString().Trim());
                SqlCommand cmd = new SqlCommand(sqlSotien, dl.CNN);
                dl.CNN.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                int sotien = 0;
                while (dr.Read())
                {
                    sotien = Convert.ToInt32(dr["SoTien"]);
                }

                dl.CNN.Close();
                dr.Close();
                lSoTien.ForeColor = Color.Red;
                lSoTien.Text = string.Format("{0:n0} VND", sotien);
            }
            else
            {
                divSotien.Visible = false;
            }
        }

        protected void ibTimKiem_Click(object sender, ImageClickEventArgs e)
        {
            if (txtTimKiem.Text.ToString().Trim() != "")
            {
                Response.Redirect("TimKiem.aspx?Key=" + txtTimKiem.Text.Trim());
            }
        }

    }
}