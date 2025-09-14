using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HTML_CSS_Kontrolleri.Asp_Konulari
{
    public partial class TextboxKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Event(Olay)
            //Sayfa açılırken otomatik olarak çalışır
            tb_isim.Text = "Selam Nassınız?";
            //tb_isim.BackColor = System.Drawing.Color.Red;
        }
    }
}