using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using Newtonsoft.Json;
using System.Web.UI.HtmlControls;

public partial class showfarmerreviews : System.Web.UI.Page
{

  //  static Boolean set=true;

    protected void Page_Load(object sender, EventArgs e)
    {

    //    if (set)
        if(!IsPostBack)
        {
            String URL = "http://kc-sce-cs551-2.kc.umkc.edu/aspnet_client/Group11/Project/FarmerReview/FarmerReview/Service1.svc/GetFarmers";
            WebRequest request = WebRequest.Create(URL);
            request.Method = "GET";
            WebResponse response = request.GetResponse();
            StreamReader sr = new StreamReader(response.GetResponseStream());
            String resp = sr.ReadToEnd();
            String[] res = JsonConvert.DeserializeObject<String[]>(resp);
            for (int i = 0; i < res.Length; i++)
            {

                farmerList.Items.Add(new ListItem(res[i], res[i]));
            }
      //      set = false;
        }
     
         
       
    }
       

    protected void getReviews(object sender, EventArgs e)
    {
        String URL = "http://kc-sce-cs551-2.kc.umkc.edu/aspnet_client/Group11/Project/FarmerReview/FarmerReview/Service1.svc/GetFarmerReview/";
        String farmerName = farmerList.Value;
      //  label1.InnerText = farmerName;
        String res = GetFarmerReviews(URL, farmerName);
        //label1.InnerText = res;
        ReviewList l = JsonConvert.DeserializeObject<ReviewList>(res);

        if (res == "{\"reviewList\":[]}")
            label1.InnerHtml = "<b align=\"center\"> No Reviews for this Farmer </b>";
        else {
            HtmlTableRow row1 = new HtmlTableRow();

        HtmlTableCell headerCell = new HtmlTableCell();
        HtmlTableCell headerCell1 = new HtmlTableCell();
        HtmlTableCell headerCell2 = new HtmlTableCell();
        HtmlTableCell headerCell3 = new HtmlTableCell();


        headerCell.InnerHtml = "<b> Customer Name </b>";
        headerCell1.InnerHtml = "<b> Farmer Name </b>";
        headerCell2.InnerHtml = "<b> Rating </b>";
        headerCell3.InnerHtml = "<b> Customer Reviews </b>";


        row1.Cells.Add(headerCell);
        row1.Cells.Add(headerCell1);
        row1.Cells.Add(headerCell2);
        row1.Cells.Add(headerCell3);

        row1.BorderColor = "blue";
        reviewTable.Rows.Add(row1);



        
        // for debugging purpose
        for (int i = 0; i < l.reviewList.Count; i++)
        {/*
            label1.InnerText += l.reviewList[i].cName;
            label1.InnerText += l.reviewList[i].fName;
            label1.InnerText += l.reviewList[i].rating;
            label1.InnerText += l.reviewList[i].review;
          */
            HtmlTableRow row2= new HtmlTableRow();

            HtmlTableCell dataCell = new HtmlTableCell();
            HtmlTableCell dataCell1 = new HtmlTableCell();
            HtmlTableCell dataCell2 = new HtmlTableCell();
            HtmlTableCell dataCell3 = new HtmlTableCell();


            dataCell.InnerHtml = l.reviewList[i].cName;
            dataCell1.InnerHtml = l.reviewList[i].fName;
            dataCell2.InnerHtml = l.reviewList[i].rating.ToString();
            dataCell3.InnerHtml = l.reviewList[i].review;


            row2.Cells.Add(dataCell);
            row2.Cells.Add(dataCell1);
            row2.Cells.Add(dataCell2);
            row2.Cells.Add(dataCell3);

           // row2.BorderColor = "blue";
            reviewTable.Rows.Add(row2);


        }
        }

    }

    protected String GetFarmerReviews(String Url, String farmerName)
    {
        WebRequest request = WebRequest.Create(Url + farmerName);
        request.Method = "GET";   
        WebResponse response = request.GetResponse();
        StreamReader sr = new StreamReader(response.GetResponseStream());
        String resp = sr.ReadToEnd();
        return resp;
    }

}



public class Review
{
    public String cName {get; set; }
    public String fName { get; set; }
    public int rating { get; set; }
    public String review { get; set; }
}


public class ReviewList
{
    public List<Review> reviewList { get; set; }
}
