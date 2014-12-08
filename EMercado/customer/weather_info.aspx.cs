using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;


public partial class customer_weather_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void getWeather(object sender, EventArgs e)
    {

       String citi = city.Value;
       String res =  GetWeatherInfo(citi);
       data.InnerHtml = res;



    
    }

    protected String GetWeatherInfo(String city)
    {
        String url = "https://api.forecast.io/forecast/72140622cae6a568cd9ae624d390d8de/";
        String pos = "37.8267,-122.423";
         url  = url + pos;
        WebRequest request = WebRequest.Create(url);
        request.Method = "GET";
        WebResponse response = request.GetResponse();
        StreamReader sr = new StreamReader(response.GetResponseStream());
        String resp = sr.ReadToEnd();
        return resp;
    }
}