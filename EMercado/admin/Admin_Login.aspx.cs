using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginbutton_Click(object sender, EventArgs e)
    {
        string username = userName.Value;
        string password = pwd.Value;

        pwdError.Text = "";
        userNameError.Text = "";

        if (username == "admin")
        {
            if (password == "123456")
            {
                Session["adminusername"] = username;
                Response.Redirect("Admin_HomePage.aspx");
            }
            else
                pwdError.Text = "Password Mismatch!!";
        }
        else
            userNameError.Text = "UserName Error";
    }
}