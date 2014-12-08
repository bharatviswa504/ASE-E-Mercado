using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;


public partial class customer_customer_submit_review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void insertData(object sender, EventArgs e)
    {

        String url = "http://kc-sce-cs551-2.kc.umkc.edu/aspnet_client/Group12/Project/FarmerReview/FarmerReview/Service1.svc/PutFarmerReview/";
        String customerName = Session["customerusername"].ToString();
        String farmerName = fname.Value;
        String ratings = rating.Value;
        String feedback = fb.Value;
        String targetURL = url + customerName + "/" + farmerName + "/" + ratings + "/" + feedback;

        String res = SubmitFarmerReview(targetURL);

        if (res == "\"Success\"")
            success.InnerHtml = "<b> Successfully Submitted the Review";

        


    }

    protected String SubmitFarmerReview(String url)
    {

        WebRequest request = WebRequest.Create(url);
        request.Method = "GET";
        WebResponse response = request.GetResponse();
        StreamReader sr = new StreamReader(response.GetResponseStream());
        String resp = sr.ReadToEnd();
        return resp;
    }


}