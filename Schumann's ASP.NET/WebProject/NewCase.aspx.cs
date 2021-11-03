using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class NewCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string full_name = cname.Text.ToString();
            string phone = phone_number.Text.ToString();
            string operation = DropDownList1.SelectedValue.ToString();
            string waiter = waiter_name.Text.ToString();
            string check = check_num.Text.ToString();
            string correction = correction_num.Text.ToString();
            string filled = filled_by.Text.ToString();
            string branch = DropDownList2.SelectedValue.ToString();
            string date = date_incident.Text.ToString();
            string details = detailsOfIncident.Text.ToString();

            string sql = "insert into tbl_cases(cname, phone, operation, waiter, check_number, correction_number, filled_by, branch, date, details) " +
                         "values(@c, @p, @o, @w, @cn, @co, @f, @b, @da, @de)";

            string cnxString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlCnx = new SqlConnection(cnxString);
            sqlCnx.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, sqlCnx);

            sqlCommand.Parameters.AddWithValue("@c", full_name);
            sqlCommand.Parameters.AddWithValue("@p", phone);
            sqlCommand.Parameters.AddWithValue("@o", operation);
            sqlCommand.Parameters.AddWithValue("@w", waiter);
            sqlCommand.Parameters.AddWithValue("@cn", check);
            sqlCommand.Parameters.AddWithValue("@co", correction);
            sqlCommand.Parameters.AddWithValue("@f", filled);
            sqlCommand.Parameters.AddWithValue("@b", branch);
            sqlCommand.Parameters.AddWithValue("@da", date);
            sqlCommand.Parameters.AddWithValue("@de", details);

            sqlCommand.ExecuteNonQuery();

            sqlCnx.Close();

            Response.Redirect("MainPage.aspx");

        }
    }
}