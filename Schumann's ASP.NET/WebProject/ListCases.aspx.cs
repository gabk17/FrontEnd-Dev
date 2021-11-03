using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class ListUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCase.aspx"); 
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCase.aspx");
        }
    }
}