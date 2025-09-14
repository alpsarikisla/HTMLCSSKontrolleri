using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HTML_CSS_Kontrolleri.Asp_Konulari
{
    public partial class LabelKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_getir_Click(object sender, EventArgs e)
        {
            List<string> list = new List<string>();
            list.AddRange(new string[] { "Ömer", "Meltem", "Yağızcan", "Palaz", "Yusuf", "Ali", "Dilara", "Nur", "Şavran", "Kaan", "Berkay", "Emir", "Alp" });

            Random rnd = new Random();
            int index = rnd.Next(0,list.Count);

            lbl_sonuc.Text = "En yaramaz = " + list[index];

        }
    }
}