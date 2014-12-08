<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Farmer_Registrationpage.aspx.cs" Inherits="farmerregistrationpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Farmer registration page</title>
<link rel="stylesheet" type="text/css" href="fregpage.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    function FSubmit() {
        var emailex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
        var fusername = document.form.username.value,
		fpassword = document.form.Password.value,
        fname = document.form.name.value,
		fage = document.form.age.value,
		femail = document.form.Email.value,
		fphone = document.form.phone.value;


        if (fusername == "") {
            document.form.username.focus();
            document.getElementById("displayerror").innerHTML = "Enter the User name";
            return false;
        }
        if (fpassword == "") {
            document.form.Password.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Password";
            return false;
        }
        if (fpassword.length < 5 || fpassword.length > 15) {
            document.form.Password.focus();
            document.getElementById("displayerror").innerHTML = "Password size is 5 -15 characters";
            return false;
        }

        if (fname == "") {
            document.form.name.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Farmer name";
            return false;
        }


        if (document.form.gender[0].checked == false && document.form.gender[1].checked == false) {
            document.getElementById("displayerror").innerHTML = "Select your Gender";
            return false;
        }



        if (femail == "") {
            document.form.Email.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Email-Id";
            return false;
        } else if (!emailex.test(femail)) {
            document.form.Email.focus();
            document.getElementById("displayerror").innerHTML = "Enter the valid Email-Id";
            return false;
        }

        if (fphone == "") {
            document.form.phone.focus();
            document.getElementById("displayerror").innerHTML = "Enter the Phone Number";
            return false;
        }
        if (fphone.length <10) {
            document.form.phone.focus();
            document.getElementById("displayerror").innerHTML = "Enter a valid Mobile number";
            return false;
        }

        if (fusername != '' && femail != '' && fpassword != '') {
            var Url = "http://kc-sce-cs551-2.kc.umkc.edu/aspnet_client/Registration_Db/Registration_Db/Service1.svc/register?account=farmer&username=" + fusername + "&pwd=" + fpassword + "&age=" + fage + "&sex=male" + "&addr1=" + document.form.address1.value + "&addr2=" + document.form.address2.value + "&phno=" + fphone + "&emailid=" + femail
            $.get(Url, function (data) {
              //  alert(Url);
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
<div id="f">
  <div id="f_body">
    <div>
      <h2 class="form_title">Farmer Registration Form</h2>
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
        <input type="text" name="name" value=""  placeholder="Farmer Name" class="ip_name">
      </div>
	  <div id="age_form">
        <input type="text" name="age" value=""  placeholder="Farmer Age" class="ip_age">
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
        <input type="text" name="Email" value=""  placeholder="Farmer Email" class="ip_email">
      </div>
      <div id="phone_form">
        <input type="text" name="phone" value=""  placeholder=" Farmer Phone number" class="ip_phone">
      </div>
       <div>
        <p id="register_farmer" onClick="FSubmit()">Register</p>
      </div>
     </form>
    </div>
    <!--form ends--> 
  </div>
</div>
<!--container ends-->

</body>
</html>
