<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Assignment.All.ForgetPassword" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Forgot</title>
<link href="HF.css" rel="stylesheet" />
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
       .hover-Button
       {
           background-color: #00CC00;
           border-color: #00CC00;
           border-style: Solid;
           color: White;
           Height: 50px;
           Width: 459px;
           Font-Size: Medium;
       }
       .hover-Button:hover
       {
           background-color: #009933;
           border-color: #009933;
       }
</style>
</head>
<body>
<div class="container">
<!-- Left Section -->
<div class="left"></div>
 
        <!-- Right Section -->
<div class="right">
<form id="form1" runat="server">
<h2 style="text-align:center">Forgot Password</h2>
<asp:TextBox ID="email" runat="server" Width="452px" Height="40px" placeholder="Type your email here..."></asp:TextBox>        
<br />
<br />
<asp:TextBox ID="OTP" runat="server" Width="453px" Height="40px" placeholder="OTP Number"></asp:TextBox>
<asp:Button ID="Button3" runat="server" class="hover-Button" OnClick="Button3_Click" Text="Send OTP" Width="120px" />
<br />
    <asp:Label ID="OTPVerify" runat="server" Visible="False"></asp:Label>
<br />
<asp:Button ID="Button4" runat="server" class="hover-Button" OnClick="Button4_Click" Text="Verify OTP" Width="456px" />
<br />
    <asp:Label ID="errMsg" runat="server" Visible="False"></asp:Label>
<br />
<asp:TextBox ID="npwd" runat="server" Width="453px" Height="40px" placeholder="New Password" Visible="False"></asp:TextBox>
<br />
<br />
<asp:TextBox ID="cpwd" runat="server" Width="453px" Height="40px" placeholder="Confirm Password" Visible="False"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" runat="server" class="hover-Button" OnClick="Button1_Click" Text="Change" Width="459px" Visible="False" />
<br />
<br />
<asp:Button ID="Button2" runat="server" BackColor="#ffffff" BorderColor="#00CC00" BorderStyle="Solid" ForeColor="Black" Height="50px" OnClick="Button2_Click" Text="Back" Width="459px" />
<br />
<br />
                Not registered yet?
<asp:LinkButton ID="LinkButton2" runat="server">Create account</asp:LinkButton>
</form>
</div>
</body>
</html>
