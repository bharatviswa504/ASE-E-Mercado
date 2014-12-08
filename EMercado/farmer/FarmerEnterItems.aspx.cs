using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FarmerEnterItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void InsertReview(object sender, EventArgs e)
    {
        //Declare Connection by passing the connection string from the web config file
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MercadoDb"].ConnectionString);

        //Open the connection
        conn.Open();

        String farmerName = Session["farmerusername"].ToString();

        String itemName = item.Value;
        String price = itemcost.Value;
        String date = datee.Value;
        String quantity = qtyy.Value;
        String quantityType = qtytype.Value;
        String category = categorytype.Value;



        //Declare the sql command
        SqlCommand cmd = new SqlCommand
            ("Insert into FarmerItems values('" + farmerName + "','" + itemName + "'," + price  + "," + quantity+ ",'" + quantityType + "','" + date + "','" + category + "')", conn);


        //Execute the insert query
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        //close the connection
        conn.Close();


    }
}