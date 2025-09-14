using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HTML_CSS_Kontrolleri.Asp_Konulari
{
    public partial class KullaniciGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_girisYap_Click(object sender, EventArgs e)
        {
            if (tb_mail.Text == "admin" && tb_sifre.Text == "1234")
            {
            }
            else
            { lbl_mesaj.Text = "Seni Tanımıyorum !!!"; }
        }
    }
}