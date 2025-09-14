using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_HTML_CSS_Kontrolleri.Asp_Konulari
{
    public partial class VeritabanliDropDownKontrolu : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddl_categories.DataSource = dm.GetCategories();
            ddl_categories.DataTextField = "Name";
            ddl_categories.DataValueField = "ID";
            ddl_categories.DataBind();
        }
    }
}