using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7.font_awesome_Login_Registration
{
    public partial class DeleteEMP : System.Web.UI.Page
    {
        Database1Entities db = new Database1Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["p"] != null)
            {
                if (!IsPostBack)
                {
                    //string idn = Request.QueryString["p"];
                    string idn = Request.QueryString["p"].ToString();
                    int x = Int32.Parse(idn);
                    var data = db.Employees.Where(d => d.Id == x).FirstOrDefault();

                    if (data != null)
                    {
                        txtId.Text = data.Id.ToString();
                        txtName.Text = data.Name;
                        //txtSalary.Text = data.Salary.ToString();
                        txtSalary.Text = decimal.Parse(data.Salary.ToString()).ToString(".00");
                    }
                }

            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //try use kora hoi jate input er somoy TextBox Blank validation declare kore
            try
            {
                int x = Int32.Parse(txtId.Text);
                var data = db.Employees.Where(d => d.Id == x).FirstOrDefault();

                if (data != null)
                {
                    db.Employees.Remove(data);
                    db.SaveChanges();

                    txtName.Text = "";
                    txtSalary.Text = "";
                }

                Response.Redirect("WebForm1.aspx");

            }
            catch (Exception ex1)
            {

                Literal1.Text = "Error:" + ex1.Message;
            }

        }

    }
}