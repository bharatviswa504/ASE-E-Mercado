<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Farmer_HomePage.aspx.cs" Inherits="farmerhomepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <title>Farmer Homepage</title>
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
  background-image:url(../images/farmer.jpg);
  background:
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
    height:60px;
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
    <marquee><h4>WELCOME FARMERS</h4></marquee>
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
                            View posted Items
                        </td >
                        <td style="height:40;text-align:center">
                            <a href="Farmer_View_ItemsPage.aspx">Click here</a>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="height:40;text-align:center">
                            Enter Items
                        </td>
                        <td style="height:40;text-align:center">
                           <a href="FarmerEnterItems.aspx">Click here</a>
                        </td>
                        
                    
                  <tr>
                        <td style="height:40;text-align:center">
                            Share Updates on Facebook
                        </td>
                        <td style="height:40;text-align:center">
                            <a href="Farmer_Fb_Post.html">Click here</a>
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
                            <a href="Farmer_Maps.html">Click here</a>
                        </td>
                        
                    </tr>


                </table>
            </div>
            
        </div>
      </div>
    </div>
  </body>
</html>
