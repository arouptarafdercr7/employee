using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7.font_awesome_Login_Registration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var data = db.Employees.ToList();

            GridView1.DataSource = data;
            GridView1.DataBind(); //Get data
        }

    }
}