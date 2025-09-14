using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HTML_CSS_Kontrolleri.Asp_Konulari
{
    public partial class ButtonKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            btn_gonder.Text = "Al Tıkladık";
        }

        protected void btn_topla_Click(object sender, EventArgs e)
        {
            double s1 = Convert.ToDouble(tb_sayi1.Text);
            double s2 = Convert.ToDouble(tb_sayi2.Text);
            double toplam = s1 + s2;
            tb_sonuc.Text = Convert.ToString(toplam);
        }
    }
}