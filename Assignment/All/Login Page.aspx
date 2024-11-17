<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="Assignment.Login_Page" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login Page</title>
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
<h2 style="text-align:center">Log in to SproutSpace</h2>
<asp:TextBox ID="username" runat="server" Width="452px" Height="40px" placeholder ="Username"></asp:TextBox>
<br />
<br />
<asp:TextBox ID="password" runat="server" Width="453px" Height="40px" placeholder ="Password" TextMode="Password"></asp:TextBox>
<br />
<br />
<asp:Button ID="login" runat="server" OnClick="login_Click" Text="Log In" CssClass="hover-Button"/>
<br />
<br />
<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot your password?</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="errMsg" runat="server" Visible="False"></asp:Label>
<br />
<br />
                Not registered yet?
<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Create account</asp:LinkButton>
    
    <br />
    <br />
<asp:Button ID="home" runat="server" OnClick="Home_Click" Text="Back to Home Page" CssClass="hover-Button"/>
    
</form>
</div>
</body>
</html>
