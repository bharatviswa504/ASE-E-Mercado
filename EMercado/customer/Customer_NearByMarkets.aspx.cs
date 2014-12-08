using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Net;
using System.Text;
using Newtonsoft.Json;
using System.Web.UI.HtmlControls;


public partial class customerNearByMarkets : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }


    public void GetMarketsList(object sender, EventArgs e)
    {
        String URL = "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip=";
        String res = CallZip(zipCode.Value, URL);

        errorLabel.InnerHtml = res;
        res = res.Replace("results", " ");
        res = res.Replace("{" ," ");
        res = res.Replace("}", " ");
        res = res.Replace("[", " ");
        res = res.Replace("]", " ");
        res = res.Replace("\""," ");

        
        errorLabel.InnerHtml = res;
    
     //   errorLabel.InnerText = res;

        /*
          errorLabel.InnerText = res;
         MarketDetailsList mList = new MarketDetailsList();
          mList.marketList = new List<MarketDetails>();
         mList = JsonConvert.DeserializeObject<MarketDetailsList>(res);
        HtmlTableCell headerCell = new HtmlTableCell();
//        HtmlTableCell headerCell1 = new HtmlTableCell();
  //      HtmlTableCell headerCell2 = new HtmlTableCell();
    //    HtmlTableCell headerCell3 = new HtmlTableCell();


        headerCell.InnerHtml = "<b> Market Name </b>";
      //  headerCell1.InnerHtml = "<b> Farmer Name </b>";
        //headerCell2.InnerHtml = "<b> Rating </b>";
        //headerCell3.InnerHtml = "<b> Customer Reviews </b>";

        HtmlTableRow row1 = new HtmlTableRow();
        row1.Cells.Add(headerCell);
        //row1.Cells.Add(headerCell1);
        //row1.Cells.Add(headerCell2);
        //row1.Cells.Add(headerCell3);

        row1.BorderColor = "blue";
        marketDetails.Rows.Add(row1);


        if (mList == null)
            errorLabel.InnerText = "<b> No Near By Markets for Given ZipCode";
        else
        {
            for (int i = 0; i < mList.marketList.Count; i++)
            {
                HtmlTableRow row = new HtmlTableRow();
                HtmlTableCell cell = new HtmlTableCell();
                cell.InnerText = mList.marketList[i].marketName;
                row.Cells.Add(cell);
                marketDetails.Rows.Add(row);
            }
        }
          */
    }
        

    public String CallZip(String zip, String URL)
    {
        WebRequest request = WebRequest.Create(URL+zip);
        request.Method = "GET";
        WebResponse response = request.GetResponse();
        StreamReader sr = new StreamReader(response.GetResponseStream());
        String resp = sr.ReadToEnd();
        return resp;
    }
 
}

public class MarketDetails
{
    public String id { get; set; }
    public String marketName { get; set; }
}


public class MarketDetailsList
{
    public List<MarketDetails> marketList { get; set; }
}