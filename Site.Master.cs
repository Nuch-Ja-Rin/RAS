using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAS_System
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] != null)
            {
                RASbaseDataContext db = new RASbaseDataContext();
                var name = (from n in db.Students
                            where n.Student_ID == Session["idUser"].ToString()
                            select n).SingleOrDefault();
                if (name != null)
                {
                    lbUser.Text = name.Student_ID + " " + name.NameTH;
                }
                else
                {
                }


                lbUser.Visible = true;
                btnLogout.Visible = true;
                LinkLogin.Visible = false;
                linkForms.Visible = true;
                linkMyProfile.Visible = true;
                linkApproved.Visible = true;
                linkAbout.Visible = true;
            }
            else
            {

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