using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

public partial class farmer_Farmer_View_ItemsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MercadoDb"].ConnectionString);

            conn.Open();


            String farmerName = Session["farmerusername"].ToString();

            SqlCommand itemcmd = new SqlCommand("select count(*) from FarmerItems where FarmerName ='" + farmerName + "'", conn);


            SqlCommand itemdatacmd = new SqlCommand("Select ItemName, Price, Quantity, QuantityType, Date, Category  from FarmerItems where FarmerName = '" + farmerName + "'", conn);

            int returnrows = Convert.ToInt16(itemcmd.ExecuteScalar().ToString());

            

            if (returnrows == 0)
            {
                // Response.Write("User name is Not Correct");
                nodata.InnerHtml = "<b> No Items!! Please Enter Items To View Here!! </b>";
            }
            else
            {

                SqlDataReader reader = itemdatacmd.ExecuteReader();

                HtmlTableRow row1 = new HtmlTableRow();

                HtmlTableCell headerCell = new HtmlTableCell();
                HtmlTableCell headerCell1 = new HtmlTableCell();
                HtmlTableCell headerCell2 = new HtmlTableCell();

                HtmlTableCell headerCell3 = new HtmlTableCell();
                HtmlTableCell headerCell4 = new HtmlTableCell();
                HtmlTableCell headerCell5 = new HtmlTableCell();



                headerCell.InnerHtml = "<b> Item Name </b>";

                headerCell1.InnerHtml = "<b> Price </b>";
                headerCell2.InnerHtml = "<b> Quantity </b>";
                headerCell3.InnerHtml = "<b> Quantity Type </b>";
                headerCell4.InnerHtml = "<b> Date </b>";
                headerCell5.InnerHtml = "<b> Category </b>";



                row1.Cells.Add(headerCell);
                row1.Cells.Add(headerCell1);
                row1.Cells.Add(headerCell2);
                row1.Cells.Add(headerCell3);
                row1.Cells.Add(headerCell4);
                row1.Cells.Add(headerCell5);

                row1.BorderColor = "blue";
                data.Rows.Add(row1);

                String itemName;
                String price;
                String quantity;
                String type;
                String date;
                String category;

                while (reader.Read())
                {
                    itemName = reader["ItemName"].ToString();
                    price = reader["Price"].ToString();
                    quantity = reader["quantity"].ToString();
                    type = reader["QuantityType"].ToString();
                    date = reader["Date"].ToString();
                    category = reader["Category"].ToString();

                    HtmlTableRow row2 = new HtmlTableRow();

                    HtmlTableCell dataCell = new HtmlTableCell();
                    HtmlTableCell dataCell1 = new HtmlTableCell();
                    HtmlTableCell dataCell2 = new HtmlTableCell();
                    HtmlTableCell dataCell3 = new HtmlTableCell();
                    HtmlTableCell dataCell4 = new HtmlTableCell();
                    HtmlTableCell dataCell5 = new HtmlTableCell();


                    dataCell.InnerHtml = itemName;
                    dataCell1.InnerHtml = price;
                    dataCell2.InnerHtml = quantity;
                    dataCell3.InnerHtml = type;
                    dataCell4.InnerHtml = date;
                    dataCell5.InnerHtml = category;


                    row2.Cells.Add(dataCell);
                    row2.Cells.Add(dataCell1);
                    row2.Cells.Add(dataCell2);
                    row2.Cells.Add(dataCell3);
                    row2.Cells.Add(dataCell4);
                    row2.Cells.Add(dataCell5);

                    data.Rows.Add(row2);

                }
            }


  
        }

    }
}