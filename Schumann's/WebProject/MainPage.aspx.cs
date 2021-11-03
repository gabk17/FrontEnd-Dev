using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            string id = txt_id.Text.ToString();
            string request = txt_request.Text.ToString();

            string sql1 = "select count(*) from tbl_users where Id = @id";
            string sql2 = "insert into tbl_request(id_user, request) values(@i, @r)"; 
        

            string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlCnx = new SqlConnection(ConnectionString);
            sqlCnx.Open();

            SqlCommand sqlCommand1 = new SqlCommand(sql1, sqlCnx);
            sqlCommand1.Parameters.AddWithValue("@id", id);

            int count = 0;
            SqlDataReader sdr = sqlCommand1.ExecuteReader();

            while (sdr.Read())
            {
                count = sdr.GetInt32(0);
            }
            if (count == 1)
            {
                SqlCommand sqlCommand2 = new SqlCommand(sql2, sqlCnx);
                sqlCommand2.Parameters.AddWithValue("@i", id);
                sqlCommand2.Parameters.AddWithValue("@r", request);

                sdr.Close();

                sqlCommand2.ExecuteNonQuery();

                sqlCnx.Close();
                LabelRes.Text = "Request Saved";

                
            }
            else
            {
                LabelRes.Text = "Id does not exist";
            }


        }
    }
}