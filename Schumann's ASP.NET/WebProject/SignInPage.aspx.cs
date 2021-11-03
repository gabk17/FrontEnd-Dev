using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class SignInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txt_Username.Text.ToString();
            string password = txt_Pass.Text.ToString();

            string sql = "select count(*) from tbl_users where username = @u and password = @p";

            string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection sqlCnx = new SqlConnection(ConnectionString);
            sqlCnx.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, sqlCnx);
            sqlCommand.Parameters.AddWithValue("@u", username);
            sqlCommand.Parameters.AddWithValue("@p", password);
            int count = 0;
            SqlDataReader sdr = sqlCommand.ExecuteReader();
            while (sdr.Read())
            {
                count = sdr.GetInt32(0);

            }
            if (count == 1)
            {
                Response.Redirect("MainPage.aspx");

            }
            else
            {
                LabelRes.Text = "Invalid User Name or Password";
            }
        }
    }
}