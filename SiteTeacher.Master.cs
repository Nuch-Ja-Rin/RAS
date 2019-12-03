using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAS_System
{
    public partial class SiteTeacher : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] != null)
            {
                RASbaseDataContext db = new RASbaseDataContext();
                var nameEmp = (from ne in db.Employees
                               where ne.EmpID == Session["idUser"].ToString()
                               select ne).SingleOrDefault();
               
                if (nameEmp != null)
                {
                    lbUser.Text = nameEmp.EmpID + " " + nameEmp.EmpName;
                    
                }
                else
                {
                    var nameTeach = (from nf in db.Teachers
                                     where nf.TeacherID == Session["idUser"].ToString()
                                     select nf).SingleOrDefault();
                    if (nameTeach != null)
                    {
                        lbUser.Text = nameTeach.TeacherID + " " + nameTeach.TeacherName;
                    }
                    else
                    {
                    }
                }
                lbUser.Visible = true;
                btnLogout.Visible = true;


                var classUser = (from c in db.Logins
                                 where c.Username == Session["idUser"].ToString()
                                 select c).SingleOrDefault();
                if(classUser != null)
                {
                    if(classUser.Class == "teacher")
                    {
                        linkMystudent.Visible = true;
                    }
                }
                else
                {

                }
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