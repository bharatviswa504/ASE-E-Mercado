<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_Registrationpage.aspx.cs" Inherits="customerregistrationpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Customer registration page</title>
<link rel="stylesheet" type="text/css" href="cregpage.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script>
    function CSubmit() {
        var emailex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
        var cusername = document.form.username.value,
		cpassword = document.form.Password.value,
        cname = document.form.name.value,
		cage = document.form.age.value,
		cemail = document.form.Email.value,
		cphone = document.form.phone.value;


        if (cusername == "") {
            document.form.username.focus();
            document.getElementById("displayerror").innerHTML = "Enter the User name";
            return false;
        }
        if (cpassword == "") {
            document.form.Password.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Password";
            return false;
        }
        if (cpassword.length < 5 || cpassword.length > 15) {
            document.form.Password.focus();
            document.getElementById("displayerror").innerHTML = "Password size is 5 -15 characters";
            return false;
        }
        if (cname == "") {
            document.form.name.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Customer name";
            return false;
        }


        if (document.form.gender[0].checked == false && document.form.gender[1].checked == false) {
            document.getElementById("displayerror").innerHTML = "Select your Gender";
            return false;
        }

        if (cemail == "") {
            document.form.Email.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Email-Id";
            return false;
        } else if (!emailex.test(cemail)) {
            document.form.Email.focus();
            document.getElementById("displayerror").innerHTML = "Enter the valid Email-Id";
            return false;
        }

        if (cphone == "") {
            document.form.phone.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Phone Number";
            return false;
        }
        if (cphone.length < 10) {
            document.form.phone.focus();
            document.getElementById("displayerror").innerHTML = "Enter a valid Mobile number";
            return false;
        }


        if (cusername != '' && cemail != '' && cpassword != '') {
            var Url = "http://kc-sce-cs551-2.kc.umkc.edu/aspnet_client/Registration_Db/Registration_Db/Service1.svc/register?account=customer&username=" + cusername + "&pwd=" + cpassword + "&age=" + cage + "&sex=male" + "&addr1=" + document.form.address1.value + "&addr2=" + document.form.address2.value + "&phno=" + cphone + "&emailid=" + cemail
            $.get(Url, function (data) {
                if (data == "success")
                    document.getElementById("displayerror").innerHTML = "Registered Successfully ";
                else
                    document.getElementById("displayerror").innerHTML = "Registeration Failure!! Please retry";
            });
           
        }
    }

</script>
</head>
<body>
     <div id="description"></div>
<!--container start-->
<div id="c">
  <div id="c_body">
    <div>
      <h2 class="form_title" >Customer Registration Form</h2>
      <p class="head_para">Registration details</p>
    </div>
    <!--Form  start-->
    <div id="form_name">
      <div class="firstname">
       <form name="form" >
       <div id="displayerror"></div>
        <input type="text" name="username" value="" placeholder="User Name"  class="ip_username" >
      </div>
      <div id="password_form">
        <input type="password" name="Password" value=""  placeholder="Enter Password" class="ip_password">
      </div>
	  <div id="name_form">
        <input type="text" name="name" value=""  placeholder="Customer Name" class="ip_name">
      </div>
	  <div id="age_form">
        <input type="text" name="age" value=""  placeholder="Customer Age" class="ip_age">
      </div>
	  <div id="gender_form">
        <input type="radio" name="gender" value="Female">
        <label >Female</label>
        &nbsp;&nbsp;&nbsp;
        <input type="radio" name="gender" value="Male">
        <label >Male</label>
      </div>
      <div id="address1_form">
        <input type="text" name="address1" value=""  placeholder="Addressline 1" class="ip_address1">
      </div>
      <div id="address2_form">
        <input type="text" name="address2" value=""  placeholder="Addressline 2" class="ip_address2">
      </div>
	  <div id="email_form">
        <input type="text" name="Email" value=""  placeholder="Customer Email" class="ip_email">
      </div>
      <div id="phone_form">
        <input type="text" name="phone" value=""  placeholder=" Customer Phone number" class="ip_phone">
      </div>
       <div>
        <p id="register_customer" onClick="CSubmit()">Register</p>
      </div>
     </form>
    </div>
    <!--form ends--> 
  </div>
</div>
<!--container ends-->

</body>
</html>
