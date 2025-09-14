using ASP_HTML_CSS_Kontrolleri.Asp_Konulari.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HTML_CSS_Kontrolleri.Asp_Konulari
{
    public partial class DataboundDropDownListKontrolu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Veri Kaynağı

            List<Kategori> kategoriler = new List<Kategori>();
            kategoriler.Add(new Kategori() { ID = 1, Isim = "Sebzeler", Aciklama="Domates,Biber" });
            kategoriler.Add(new Kategori() { ID = 2, Isim = "İçecekler", Aciklama="Kola, Sarı Kola" });
            kategoriler.Add(new Kategori() { ID = 3, Isim = "Şarküteri", Aciklama="Et"});
            kategoriler.Add(new Kategori() { ID = 4, Isim = "Temizlik Ürünleri" });

            #endregion

            if(!IsPostBack)//Sayfa İlk kez çalışıyorsa
            {
                ddl_kategoriler.DataSource = kategoriler;
                //ddl_kategoriler.DataTextField = "Isim";
                //ddl_kategoriler.DataValueField = "ID";
                ddl_kategoriler.DataBind();
            }
        }

        protected void btn_sec_Click(object sender, EventArgs e)
        {
            if (ddl_kategoriler.SelectedItem.Value != "0")
            {
                lbl_secilen.Text = ddl_kategoriler.SelectedItem.Text;
            }
            else
            {
                lbl_secilen.Text = "Lütfen kategori seçiniz";
            }
        }
    }
}