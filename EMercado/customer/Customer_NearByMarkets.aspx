<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_NearByMarkets.aspx.cs" Inherits="customerNearByMarkets" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
    function getResults() {
    // or
    // function getResults(lat, lng) {
        var zip = document.getElementById("zipCode").value;
        alert(zip);
    $.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        // submit a get request to the restful service zipSearch or locSearch.
        url: "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip=" + zip,
        // or
        // url: "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/locSearch?lat=" + lat + "&lng=" + lng,
        dataType: 'jsonp',
        jsonpCallback: 'searchResultsHandler'
    });
}
//iterate through the JSON result object.
/*function searchResultsHandler(searchResults) {
    for (var key in searchresults) {
        alert(key);
        var results = searchresults[key];
        for (var i = 0; i < results.length; i++) {
            var result = results[i];
            for (var key in result) {
                //only do an alert on the first search result
                if (i == 0) {
                    alert(result[key]);
                }
            }
        }
    }
}*/
</script>
<style type="text/css">
        header {
background-color:black;
color:white;
text-align:center;
padding:5px; 
}
        #tb1 {
	font-family: verdana,arial,sans-serif;
	font-size:13px;
	color:#333333;
	border-color: #a9c6c9;
	border-collapse: collapse;
}
#tb1 th {
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
#tb1 td {
	padding: 8px;
	background: #ebecda;
	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ViZWNkYSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjQwJSIgc3RvcC1jb2xvcj0iI2UwZTBjNiIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiNjZWNlYjciIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(top,  #ebecda 0%, #e0e0c6 40%, #ceceb7 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ebecda), color-stop(40%,#e0e0c6), color-stop(100%,#ceceb7));
	background: -webkit-linear-gradient(top,  #ebecda 0%,#e0e0c6 40%,#ceceb7 100%);
	background: -o-linear-gradient(top,  #ebecda 0%,#e0e0c6 40%,#ceceb7 100%);
	background: -ms-linear-gradient(top,  #ebecda 0%,#e0e0c6 40%,#ceceb7 100%);
	background: linear-gradient(to bottom,  #ebecda 0%,#e0e0c6 40%,#ceceb7 100%);
	border: 1px solid #999999;
}
nav {
line-height:30px;
background-color:#9C8888;
height:550px;
width:275px;
float:left;
padding:5px; 
}
section {
width:550px;
float: left;
padding:10px; 
}

footer 
{
background-color:black;
color:white;
clear:both;
text-align:center;
padding: 10px;
position:absolute;
   bottom:0;
   width:100%; 
}
#outputdiv
{
    position:fixed;
    overflow: auto; 
    width: auto;  
    height: auto;  
    background-color: #0156c0;  
    color: white;  
    FONT-SIZE: .8em;  
    margin: 0px 0px 0px 0px;  
    padding: 5px;  
      
}

    </style>
</head>
<body>
     <header>
  <h1>Get Near By Markets</h1> 
   </header>
   <nav>
   <br />
   <br />
   <h3 align="center">Get Info of Near By Markets using zipcode</h3>
   <p>This service provides the list of markets near to that zip location.</p>
   </nav>
   <section>
    
    <form id="form1" runat="server">
    
    <div id="outputdiv">
    <label>Enter ZipCode</label>
    <input type="text" id="zipCode" runat="server"/> 
    <input id="Submit1" type="submit" runat="server" value="GetMarkets" onserverclick="GetMarketsList" />
    <br />
    <br />

    <label runat="server" id="errorLabel"></label>
    </div>   
    </form>
    </section>
    <footer>
   Copyright © EMercado.com
   </footer>
</body>
</html>
