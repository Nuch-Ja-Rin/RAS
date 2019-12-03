using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAS_System
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RASbaseDataContext db = new RASbaseDataContext();
            var formGridview = (from g in db.FormRequirements
                                select new
                                {
                                    ID_Form = g.FormID,
                                    FormName = g.FormNameTH
                                }).ToList();
            if(formGridview.Count != 0)
            {
                //GridView1.DataSource = formGridview;
                //GridView1.DataBind();

                Repeater1.DataSource = formGridview;
                Repeater1.DataBind();
            }
            else
            {

            }
            //foreach (GridViewRow row in GridView1.Rows)
            //{
            //    LinkButton BTS = row.FindControl("btnSubmit") as LinkButton;
            //    BTS.Click += new EventHandler(btnSubmit_Click);
            //}
        }

       

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    if (Session["idUser"] != null)
        //    {
        //        LinkButton BTS = (LinkButton)sender;
        //        GridViewRow BTs = (GridViewRow)BTS.NamingContainer;
        //        string idNo = BTs.Cells[1].Text.Trim();
        //        string noTest = BTs.Cells[2].Text.Trim();

        //        if(idNo != null)
        //        {
        //            Session["idForm"] = idNo;
        //            if(idNo == "T2")
        //            {
        //                Response.Redirect("~/FormT2.aspx");
        //            }
                    
        //        }

        //    }
        //    else
        //    {
        //        Response.Redirect("~/Login.aspx");
        //    }
        //}
    }
}