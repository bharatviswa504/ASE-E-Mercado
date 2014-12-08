<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_Show_Farmer_Reviews.aspx.cs" Inherits="showfarmerreviews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title> Customer Reviews</title>
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
#reviewTable td {
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
height:440px;
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
    <script src="http://code.jquery.com/jquery-1.7.js" 
            type="text/javascript"></script>
    
    <script type="text/javascript">
       // $(document).ready(function () {
        function getReviews() {
            var selectedFarmer = document.getElementById("farmerList");
            var farmerName = selectedFarmer.options[selectedFarmer.selectedIndex].value;
        //    debugger
       //     alert(farmerName);  
            var url = "http://kc-sce-cs551-2.kc.umkc.edu/aspnet_client/Group11/Project/FarmerReview/FarmerReview/Service1.svc/GetFarmerReview/bhavana";
            // debugger
            //alert(targetUrl);

            var table = document.getElementById("reviewTable");
                 var header = table.createTHead();
                var row = header.insertRow(0);
                var cell = row.insertCell(0);
                cell.innerHTML = "<b> Customer Name </b>";

                var cell1 = row.insertCell(1); 
                var cell2 = row.insertCell(2);
                var cell3 = row.insertCell(3);
                cell1.innerHTML = "<b> Farmer Name </b>";
                cell2.innerHTML = "<b>Rating</b>";
                cell3.innerHTML = "<b>Reviews </b>";
               var j = 1;
            $.getJSON(url, function (data) {
                //    debugger
             //   alert(data.reviewList.length);
                for (i = 0; i < data.reviewList.length; i++) {
                   // alert(data.reviewList[0].cName + data.reviewList[0].fName + data.reviewList[i].rating);
                   var row = table.insertRow(j++);
                   var cell = row.insertCell(0);
                   var header = table.createTHead();
                 var row = header.insertRow(0);
                var cell = row.insertCell(0);
                cell.innerHTML = data.reviewList[i].cName;

                var cell1 = row.insertCell(1); 
                var cell2 = row.insertCell(2);
                var cell3 = row.insertCell(3);
                cell1.innerHTML = data.reviewList[i].fName;
                cell2.innerHTML = data.reviewList[i].rating;
                cell3.innerHTML = data.reviewList[i].review;
                }
            });
        }

        function getFarmerList() {
            var url = "http://kc-sce-cs551-2.kc.umkc.edu/aspnet_client/Group11/Project/FarmerReview/FarmerReview/Service1.svc/GetFarmers";
            $.get(url, function (data) {
                //  alert(data);
                var fList = document.getElementById("farmerList");
                var j = 1;


                for (var i = 0; i < data.length; i++) {
                    var farmerName = document.createElement("option");
                    farmerName.text = data[i];
                    farmerName.value = data[i];
                    fList.add(farmerName, j++);
                }
            });
        }
       
    </script>

</head>
<body>
<header>
  <h1>Customer Reviews</h1> 
   </header>
   <nav>
   <br />
   <br />
   <h4 align="center">Check for Farmer Reviews from Customers</h4>
   <p>This Page Provides reviews of the available farmers from different customers</p>
   </nav>
 <section>
    <form id="form1" runat="server">
    <div id="outputdiv">
    <label>Select Farmer:</label>
    <select id="farmerList" runat="server">
    </select>
    <button runat="server" onserverclick="getReviews">Submit</button>
    </div>
    </section>
    <br />
    <br />
    <br />

    <div>
    <table id="reviewTable" style="border-width:1; border-color:Black"  border="2" runat="server">
    </table>
    </div>
    <label runat="server" id="label1" style="text-align:center"></label>
    
    </form>
        <footer>
   Copyright © EMercado.com
   </footer>
</body>
</html>
