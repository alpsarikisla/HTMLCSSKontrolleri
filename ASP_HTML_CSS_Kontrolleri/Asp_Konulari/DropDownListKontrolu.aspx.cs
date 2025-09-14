using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HTML_CSS_Kontrolleri.Asp_Konulari
{
    public partial class DropDownListKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddl_Markalar.Items.Add("MSI");
        }

        protected void btn_sec_Click(object sender, EventArgs e)
        {
            lbl_secilen.Text = "Value = " + ddl_dersler.SelectedItem.Value + " Text = " + ddl_dersler.SelectedItem.Text;

        }

        protected void ddl_Markalar_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl_secilenMarka.Text = "Value = " + ddl_Markalar.SelectedItem.Value + " Text = " + ddl_Markalar.SelectedItem.Text;
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_eklenecek.Text))
            {
                ddl_eklenecek.Items.Add (tb_eklenecek.Text);
            }
        }

        protected void ddl_eklenecek_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl_eklenecek.Text = "Value = " + ddl_eklenecek.SelectedItem.Value + " Text = " + ddl_eklenecek.SelectedItem.Text;
        }
    }
}