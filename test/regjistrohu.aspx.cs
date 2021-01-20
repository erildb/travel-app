using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;

namespace ITravel
{
    public partial class Regjistrohu : System.Web.UI.Page
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

        protected void regjistrohu_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connectionString = WebConfigurationManager.ConnectionStrings["ITravel"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string s = @"~\foto\" + foto.FileName;
                    foto.PostedFile.SaveAs(Server.MapPath(s));
                    string passwordKoduar = EnkriptoPasswordBase64(Password.Text);
                    SqlCommand cmd = new SqlCommand("prc_shtoperson", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Emri", Emri.Text);
                    cmd.Parameters.AddWithValue("@Mbiemri", Mbiemri.Text);
                    cmd.Parameters.AddWithValue("@Username", Username.Text);
                    cmd.Parameters.AddWithValue("@Password", EnkriptoPasswordBase64(Password.Text));
                    cmd.Parameters.Add("@Datelindje", SqlDbType.Date);
                    cmd.Parameters.AddWithValue("@Email", Email.Text);
                    cmd.Parameters["@Datelindje"].Value = Datelindje.Text;
                    cmd.Parameters.AddWithValue("@Photo", s);
                    conn.Open();
                    int nrExec = (int)cmd.ExecuteScalar();
                    if (nrExec == 1)
                    {
                        Response.Redirect("Logohu.aspx");
                    }
                    else
                    {
                        lblError.Text = "Ky user ekziston";
                    }

                }
            }

        }
    }

}