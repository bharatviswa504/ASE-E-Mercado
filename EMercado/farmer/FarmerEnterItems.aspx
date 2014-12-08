<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerEnterItems.aspx.cs" Inherits="FarmerEnterItems" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Enter Items</title>
</head>
<style type="text/css">
     header {
background-color:black;
color:white;
text-align:center;
padding:5px; 
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
  
#tab{position:absolute;
					top:20%;
					left:38%;}

</style>
<body>
<header>
  <h1>ENTER ITEMS CATALOGUE</h1> 
   </header>
   <nav>
   <br />
   <br />
   <h3 align="center">ENTER ITEMS CATALOGUE</h3>
   <p>This service provides the farmer to enter the list of items that he/she is going to display for sale in the market.</p>
   </nav>
   <section>
    <form id="form1" runat="server">
        <div id="tab">
        <h1>Enter Your Items Here</h1>
        </div>
        <table align="center" border="5" width="30%" cellpadding="10px" cellspacing="02px" >
        <tr>
        <td>
        <div><strong>Item Name:</strong> <input id="item" type="text" name="ItemName" size="25" maxlength="15" placeholder="Enter your Item Name" runat="server" />
        </td>
        </tr>
        </br></br>
        <tr>
        <td>
        <strong>Item Quantity:</strong> <input id="qtyy" type="text" name="ItemQuantity" size="25" maxlength="15" placeholder="Enter Item Quantity" runat="server" />
        </td>
        </tr>
         <tr>
        <td>
        <strong>Quantity Type:</strong> <select id="qtytype" runat="server">
        <option value="Lb">Lb</option>
        <option value="Nos">No</option>
        </select>
        </td>
        </tr>
        <tr align="center">
         <td> <strong> Category</strong>
    <select id="categorytype" runat="server">
    <option value="Root Vegetables">Root Vegetables</option>
    <option value="Leafy Vegetables">Leafy Vegetables</option>
    <option value="Fruits">Fruits</option>
    <option value="Flower Buds">Flower Buds</option>
    <option value="Stem Vegetables">Stem Vegetables</option>
    <option value="Podded Vegetables">Podded Vegetables</option>
    </select>
    </td>
    </tr>
    
      
        
        <tr>
        <td>
        <strong>Item Cost:</strong> <input id="itemcost" type="text" name="ItemCost" size="25" maxlength="15" placeholder="Enter Item Cost" runat="server" />
        </td>
        </tr>
        </br></br>
        <tr>
        <td>
        <strong>Date:</strong> <input id="datee" type="text" name="Username1" size="25" maxlength="15" placeholder="Enter Date" runat="server" />
        </tr>
        </td>
        </br></br>
        <tr>
        <td>
        <input id="Button1" type="submit" value="Enter Items" runat="server" onserverclick="InsertReview" /></div>
        </td>
        </tr>        
        </table>
        
    </form>
    </section>
    
</body>
</html>
