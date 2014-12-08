using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class farmerlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginbutton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MercadoDb"].ConnectionString);

        conn.Open();

        string username = userName.Value;

        string password = pwd.Value;


        userNameError.InnerText = "";
        pwdError.InnerText = "";


        SqlCommand usernamecmd = new SqlCommand("Select count(*) from farmerregistration where username = '" + username + "'", conn);

        int returnrows = Convert.ToInt16(usernamecmd.ExecuteScalar().ToString());


        conn.Close();

        if (returnrows == 0)
        {
            // Response.Write("User name is Not Correct");
            userNameError.InnerText = "User Name is Incorrect";
        }
        else
        {

            conn.Open();


            SqlCommand pwdcommand = new SqlCommand("select password from farmerregistration where username = '" + username + "'", conn);


            SqlDataReader reader = pwdcommand.ExecuteReader();


            while (reader.Read())
            {
                if (password == reader["password"].ToString().Replace(" ", ""))
                {
                    Session["farmerusername"] = username;
                    // Response.Write("Successfully Logged in");
                    Response.Redirect("Farmer_HomePage.aspx");
                }
                else
                {
                    pwdError.InnerText = "Password Error";
                    // Response.Write("Password MisMatch!!");
                }
            }

            reader.Close();

            conn.Close();
        }

    }
}