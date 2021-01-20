using System;
using System.Web.Security;
using System.Web.UI;

namespace ITravel
{
    public partial class SiteMaster : MasterPage
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!this.Page.User.Identity.IsAuthenticated)
        //    {
        //        FormsAuthentication.RedirectToLoginPage();
        //    }
        //    kontrolloadmin();
        //    //DisplaySessionValue();
        //}

        ////private void DisplaySessionValue()
        ////{
        ////    if (Session["Username"] != null)

        ////        emer.Text = Session["Emri"].ToString();
        ////    else
        ////        FormsAuthentication.RedirectToLoginPage();
        ////}

        //private void kontrolloadmin()
        //{
        //    if (string.IsNullOrEmpty(Session["roli"] as string))
        //    {

        //    }
        //    else
        //    {
        //        string sessionUserId = Session["roli"] as string;
        //        if (sessionUserId == "user")
        //        {
        //            admin.Visible = false;
        //        }
        //        else
        //        {
        //            //mesazh.Visible = false;
        //        }
        //    }
        //}
    }
}