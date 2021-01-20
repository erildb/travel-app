using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITravel
{
    public partial class Logohu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string EnkriptoPasswordBase64(string password)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(password);
            byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
            return Convert.ToBase64String(inArray);
        }

        protected void logohu_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["ITravel"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("prc_logohu", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", Username.Text);
                cmd.Parameters.AddWithValue("@pw", EnkriptoPasswordBase64(Password.Text));
                conn.Open();
                ruajnesesion();
                int usercount = (int)cmd.ExecuteScalar();
                if (usercount == 0)
                {
                    lblError.Text = "Username ose/dhe Password eshte gabim";
                }
                else
                {
                    FormsAuthentication.RedirectFromLoginPage(Username.Text, false);
                }
            }
        }

        private void ruajnesesion()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["ITravel"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string merremer = "SELECT EMRI from person where username=@usr";
                SqlCommand cmd = new SqlCommand(merremer, conn);
                cmd.Parameters.AddWithValue("@usr", Username.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                Session["Emri"] = cmd.ExecuteScalar();
                Session["Username"] = Username.Text;
                string gjejrol = "select roli from person where username=@usrn";
                SqlCommand roli = new SqlCommand(gjejrol, conn);
                roli.Parameters.AddWithValue("@usrn", Username.Text);
                Session["roli"] = roli.ExecuteScalar();
                conn.Close();
            }
        }
    }
}