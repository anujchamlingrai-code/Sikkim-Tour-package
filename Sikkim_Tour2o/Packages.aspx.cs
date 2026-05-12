using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sikkim_Tour2o
{
    public partial class Packages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        // Method to redirect to AllDistrict.aspx page
        protected void RedirectToDistrictPage(object sender, EventArgs e)
        {
            Response.Redirect("AllDistrict.aspx");
        }
    }
}