using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAS_System
{
    public partial class SiteAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] != null)
            {
                lbUser.Text = Session["idUser"].ToString();
                lbUser.Visible = true;
                btnLogout.Visible = true;
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Session["idUser"] = null;
                Session["class"] = null;
                Response.Redirect("~/Login.aspx");
            }
            else
            {

            }
        }
    }
}