<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Farmer_Login.aspx.cs" Inherits="farmerlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title>Farmer Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <style>
          body {
    padding-top: 120px;
    padding-bottom: 40px;
    background-color: #eee;
    background: url(../images/veg.jpg) no-repeat center center;
    background-size: cover;
  }
  .btn 
  {
   outline:0;
   border:none;
   border-top:none;
   border-bottom:none;
   border-left:none;
   border-right:none;
   box-shadow:inset 2px -3px rgba(0,0,0,0.15);
  }
  .btn:focus
  {
   outline:0;
   -webkit-outline:0;
   -moz-outline:0;
  }
  #c_content
  {
      font-family:Times New Roman;
      font-size: 17px;
      margin-left:300px;
      margin-top:100px;
      color: black;
      font-weight:bold;
  }
  .fullscreen_bg {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-size: cover;
    background-position: 50% 50%;
    
    background-repeat:repeat;
  }
  .form-signin {
   max-width: 280px;
    padding: 15px;
    
    margin-left:600px;
      margin-top:150px;
      margin-bottom:100px;
  }
  .form-signin .form-signin-heading, .form-signin {
    margin-bottom: 10px;
  }
  .form-signin .form-control {
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  .form-signin .form-control:focus {
    z-index: 2;
  }
  .form-signin input[type="text"] {
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
    border-top-style: solid;
    border-right-style: solid;
    border-bottom-style: none;
    border-left-style: solid;
    border-color: #000;
  }
  .form-signin input[type="password"] {
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-top-style: none;
    border-right-style: solid;
    border-bottom-style: solid;
    border-left-style: solid;
    border-color: rgb(0,0,0);
    border-top:1px solid rgba(0,0,0,0.08);
  }
  .form-signin-heading {
    color: #fff;
    text-align: center;
    text-shadow: 0 2px 2px rgba(0,0,0,0.5);
  }
  #userNameError
  {
      color:Red;
  }
  #pwdError
  {
      color:Red;
  }
  
    </style>
    <script language="javascript" type="text/javascript">

    </script>
</head>
<body>
   <div id="c_content">
        Logging in as a farmer enables you to access the <br />following features<br />
        <br /><ul>
        <li>Enter the items to be sold.</li>
        <li>Check the weather of the market area.</li>
        <li>Check for markets around using maps.</li>
        </ul>
        </div>
    <div id="fullscreen_bg" class="fullscreen_bg"/>
        <div class="container">
            <form id="flogin" class="form-signin" runat="server" method="post">
                <h2 class="form-signin-heading text-muted">
                    Farmer Sign In
                    
                </h2>
		        <input type="text" class="form-control" placeholder="UserName" required="" autofocus="" id="userName" runat="server" />
                <label ID="userNameError" runat="server"></label>
		        <input type="password" class="form-control" placeholder="Password" required="" id="pwd" runat="server"/>
                <label ID="pwdError" runat="server"></label>
                <asp:Button class="btn btn-lg btn-primary btn-block" ID="loginbutton" 
                    runat="server" Text="Sign In" type="submit" onclick="loginbutton_Click"/>
	       </form>
        </div>
    
</body>
</html>

