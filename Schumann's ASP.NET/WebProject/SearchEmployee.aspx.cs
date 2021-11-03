using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class SearchEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButSearch_Click(object sender, EventArgs e)
        {
            string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(ConnectionString);
            sqlconn.Open();
            SqlCommand sqlComm = new SqlCommand();

            string sqlquery = "select * from tbl_users where Id like '%'+@Id+'%'";

            sqlComm.CommandText = sqlquery;
            sqlComm.Connection = sqlconn;
            sqlComm.Parameters.AddWithValue("Id", Txtsearch.Text);

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlComm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}