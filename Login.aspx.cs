using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAS_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntLogin_Click(object sender, EventArgs e)
        {
            if(txtUserName.Text == "" || txtUserName.Text=="" ||txtPassword.Text == null || txtPassword.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showtxt", "alert('Please enter your username and password.');", true);
            }
            else
            {
                FunctionLogin();
            }
           
            void FunctionLogin()
            {
                RASbaseDataContext db = new RASbaseDataContext();

                var login = (from l in db.Logins
                             where l.Username == txtUserName.Text.ToUpper()
                             select l).SingleOrDefault();

                if (login != null)
                {
                    Session["idUser"] = login.Username;
                    if (login.Password == txtPassword.Text)
                    {
                        if (login.Class == "student")
                        {
                            Response.Redirect("~/Default.aspx");
                        }
                        else if (login.Class == "teacher" || login.Class == "employee")
                        {
                            Response.Redirect("~/ListApprove.aspx");
                        }
                        else if (login.Class == "admin")
                        {
                            Response.Redirect("~/PageAdmin.aspx");
                        }

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showPassword", "alert('Incorrect password. Please re-enter.');", true);
                    }



                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(),
                        "showUser", "alert('You do not have permission to use the system. Please contact the service center.');", true);
                    txtUserName.Text = "";
                    txtPassword.Text = "";
                }

            }
        }
    }
}