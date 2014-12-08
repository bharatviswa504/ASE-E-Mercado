<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_HomePage.aspx.cs" Inherits="customerhomepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <title>Customer Homepage</title>
    <style>

#content-wrapper{
  display:table;
  background-color:Green;
}

#content{
  display:table-row;
}

#content>div{
  display:table-cell
}

/*adding some extras for demo purposes*/
#content-wrapper{
  width:100%;
  height:100%;
  top:0px;
  left:0px;
  position:absolute;
}
#nav{
  width:300px;
  background:yellow;
  background-image:url(../images/customer.jpg);
   background-size: polyfill;
  
}
#body{
  background:black;
}

.CSSTableGenerator 
{
   
	margin:0px;padding:0px;
	width:100%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
	
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
	
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
	
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.CSSTableGenerator table
{
    margin-top:150px;
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:0px;
	-webkit-border-bottom-right-radius:0px;
	border-bottom-right-radius:0px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:0px;
	-webkit-border-top-left-radius:0px;
	border-top-left-radius:0px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:0px;
	-webkit-border-top-right-radius:0px;
	border-top-right-radius:0px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:0px;
	-webkit-border-bottom-left-radius:0px;
	border-bottom-left-radius:0px;
}.CSSTableGenerator tr:hover td{
	
}
.CSSTableGenerator tr:nth-child(odd){ background-color:#ffaa56; }
.CSSTableGenerator tr:nth-child(even)    { background-color:#ffffff; }.CSSTableGenerator td{
	vertical-align:middle;
	
	
	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:7px;
	font-size:10px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #ff7f00 5%, #bf5f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #bf5f00) );
	background:-moz-linear-gradient( center top, #ff7f00 5%, #bf5f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#bf5f00");	background: -o-linear-gradient(top,#ff7f00,bf5f00);

	background-color:#ff7f00;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ff7f00 5%, #bf5f00 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #bf5f00) );
	background:-moz-linear-gradient( center top, #ff7f00 5%, #bf5f00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#bf5f00");	background: -o-linear-gradient(top,#ff7f00,bf5f00);

	background-color:#ff7f00;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}

table tr
{
    height:50px;
}
h4
{
    text-align:center;
    text-transform:uppercase;
    color:White;
}

</style>

  </head>
  <body>
    <div id="content-wrapper">
    <marquee><h4>WELCOME CUSTOMERS</h4></marquee>
      <div id="content">
        <div id="nav">
            
        </div>
        <div id="body">
         <div class="CSSTableGenerator">
                <table  style="margin-top:150px">
                    <tr>
                        <td height="50">
                            Features
                        </td>
                        <td height="50">
                            Action
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="height:40;text-align:center">
                            Search for near by markets
                        </td >
                        <td style="height:40;text-align:center">
                            <a href="Customer_NearByMarkets.aspx">Click here</a>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="height:40;text-align:center">
                            Search for markets by entering query
                        </td>
                        <td style="height:40;text-align:center">
                           <a href="Customer_Search_Markets.aspx">Click here</a>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="height:40;text-align:center">
                            Submit farmer reviews
                        </td>
                        <td style="height:40;text-align:center">
                            <a href="customer_submit_review.aspx">Click here</a>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="height:40;text-align:center">
                            Check for farmer reviews
                        </td>
                        <td style="height:40;text-align:center">
                            <a href="Customer_Show_Farmer_Reviews.aspx">Click here</a>
                        </td>
                        
                    </tr>

                    <tr>
                        <td style="height:40;text-align:center">
                            Search products based on price
                        </td>
                        <td style="height:40;text-align:center">
                            <a href="Customer_ProductCategory_Price.html">Click here</a>
                        </td>
                        
                    </tr>
                   
                    <tr>
                        <td style="height:40;text-align:center">
                            Get Weather Updates
                        </td>
                        <td style="height:40;text-align:center">
                            <a href="weather_info.aspx">Click here</a>
                        </td>
                        
                    </tr>


                     <tr>
                        <td style="height:40;text-align:center">
                            Get Directions
                        </td>
                        <td style="height:40;text-align:center">
                            <a href="Customer_Maps.html">Click here</a>
                        </td>
                        
                    </tr>

                </table>
            </div>
            
        </div>
      </div>
    </div>
  </body>
</html>
