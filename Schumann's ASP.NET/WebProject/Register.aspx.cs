using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string firstname = fname.Text.ToString();
            string lastname = lname.Text.ToString();
            string username = uname.Text.ToString();
            string user_email = email.Text.ToString();
            string password = pass.Text.ToString();


            string sql = "insert into tbl_users(fname, lname, username, password, email) values(@f, @l, @u, @p, @e)";

            string cnxString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlCnx = new SqlConnection(cnxString);
            sqlCnx.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, sqlCnx);

            sqlCommand.Parameters.AddWithValue("@f", firstname);
            sqlCommand.Parameters.AddWithValue("@l", lastname);
            sqlCommand.Parameters.AddWithValue("@u", username);
            sqlCommand.Parameters.AddWithValue("@p", password);
            sqlCommand.Parameters.AddWithValue("@e", user_email);
            sqlCommand.ExecuteNonQuery();
            sqlCnx.Close();
            Response.Redirect("SignInPage.aspx");
        }
    }
}