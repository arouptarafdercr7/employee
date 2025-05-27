using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7.font_awesome_Login_Registration
{
    public partial class Registration : System.Web.UI.Page
    {
        Database1Entities db=new Database1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            UserInfo unfo = new UserInfo();

            unfo.UserName = txtUserName.Text;
            unfo.Password = txtPassword.Text;
            unfo.Email = txtEmail.Text;
            unfo.Role = "User";

            db.UserInfoes.Add(unfo);
            db.SaveChanges();

            Literal1.Text = "Thanks ! Complete Your Registration";

        }
    }
}