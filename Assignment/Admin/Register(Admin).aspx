<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register(Admin).aspx.cs" Inherits="Assignment.Admin.Register_Admin_" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Register Page</title>
<style>
       body, html {
           margin: 0;
           padding: 0;
           width: 100%;
           height: 100%;
           font-family: Arial, sans-serif;
       }
       .container {
           display: flex;
           width: 100%;
           height: 100vh;
       }
       .left {
           width: 50%;
           background-image: url('../flower.jpg');
           background-size: cover;
           background-position: center;
       }
       .right {
           width: 50%;
           display: flex;
           justify-content: center;
           align-items: center;
           padding: 20px;
       }
       .login-form {
           width: 100%;
           max-width: 400px;
       }
       .login-form h2 {
           text-align: center;
           margin-bottom: 20px;
       }
       .OTPbtn{
           background-color: #00CC00;
           border-color: #00CC00;
           border-style: Solid;
           color: White;
           Height: 34px; 
           Width: 130px;
       }
       .Createbtn{
           background-color: #00CC00;
           border-color: #00CC00;
           border-style: Solid;
           color:white;
           height: 50px;
           width:453px;
       }
       .OTPbtn:hover, .Createbtn:hover{
           background-color: #009933;
           border-color: #009933;
       }

</style>
    <script src="https://smtpjs.com/v3/smtp.js">
</script>
</head>
<body>
<div class="container">
<!-- Left Section -->
<div class="left"></div>
 
        <!-- Right Section -->
<div class="right">
<form id="form1" runat="server">
<h2 style="text-align:center">Join SproutSpace</h2>

<asp:TextBox ID="username" runat="server" Width="453px" Height="40px" placeholder ="Type the Username here"></asp:TextBox>
    <br />
    
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Small">Please type your username</asp:RequiredFieldValidator>
    
<br />

<asp:TextBox ID="password" runat="server" Width="453px" Height="40px" placeholder ="Type the Password here"></asp:TextBox>
    <br />

<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Small">Please type your password</asp:RequiredFieldValidator>

<br />

<asp:TextBox ID="cpassword" runat="server" Width="453px" Height="40px" placeholder ="Confirm Password"></asp:TextBox>
    <br />

<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="CompareValidator" ForeColor="Red" Font-Size="Small">The password is not match!</asp:CompareValidator>
    <br />

<asp:TextBox ID="Email" runat="server" Width="453px" Height="40px" placeholder="Type the E-mail here"></asp:TextBox>
    <br />
    

<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Size="Small">Please type your email</asp:RequiredFieldValidator>
    

    <br />

<asp:TextBox ID="OTP" runat="server" Width="261px" Height="40px" placeholder="Type the OTP Number"></asp:TextBox>

<asp:Button ID="Button2" runat="server" Text="Send OTP number" CssClass="OTPbtn" OnClick="Button2_Click"/>
    <br />
    <br />

<asp:Button ID="Button3" runat="server" Text="Verify OTP number" CssClass="OTPbtn" OnClick="Button3_Click"/>
    <br />

<asp:Label ID="OTPVerify" runat="server" Visible="False"></asp:Label>

    <br />
    <asp:Label ID="errMsg" runat="server" Visible="False"></asp:Label>

<asp:Label ID="usertype" runat="server" Text="Admin" Visible="False"></asp:Label>
<br />

<asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" Enabled="False" CssClass="Createbtn"/>
<br />
<br />

Already have an account? <a href = "../All/Login Page.aspx">Sign In</a>
</form>
</div>
    <script src="OTP.js"></script>
</body>
</html>