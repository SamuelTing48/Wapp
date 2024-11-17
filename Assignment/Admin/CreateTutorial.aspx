<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTutorial.aspx.cs" Inherits="Assignment.Create_Tutorial" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Image Upload Example</title>
<link href="Create%20Tutorial.css" rel="stylesheet" />
    <link href="../All/HF.css" rel="stylesheet" />
<style>
    .content{
     height:1000px;
     padding:50px;
    }
    .txttitle{
        width:25%;
        margin-bottom:20px;
        border:none;
        border-bottom: 2px solid #00640045;
        outline:none;
        height:40px;
        color:#000000;
        font-size:16px;
        background-color:transparent;
    }
    .txtcontent{
        width:50%;
        margin-bottom:20px;
        border:none;
        border-bottom: 2px solid #00640045;
        outline:none;
        height:40px;
        color:#000000;
        font-size:16px;
        background-color:transparent;
    }
    .Uploadbtn{
        background-color:#00CC00;
        border-color:#00CC00;
        width:100px;
        height:30px;
        color:White;
    }
    .Browsefile{
        width:200px;
        height:30px;
    }
    .Createbutton{
        background-color:#00CC00;
        border-color:#00CC00;
        width:130px;
        height:50px;
        right:300px;
        color:White;
    }
    .Uploadbtn:hover, .Createbutton:hover{
       background-color: #009933;
       border-color: #009933;
    }

</style>
</head>
<body>
<form id="form1" runat="server">
        <header class="header">
            <h1>SproutSpace</h1>
            <nav class="nav-links">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/All/Home Page.aspx" Font-Overline="False" ForeColor="White">Home</asp:HyperLink>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Learn</asp:LinkButton>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/All/BrowseBlog.aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/All/AboutUs.aspx" Font-Overline="False" ForeColor="White">About Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/All/JoinUs.aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/All/ContactUs.aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/All/Profile.aspx" Font-Overline="False" ForeColor="White">Profile</asp:HyperLink>
            </nav>
        </header>
<div class="content">
<h1 style="padding-left:10px">Create Tutorial</h1>
<h2 style="padding-left:10px">Title</h2>
&nbsp&nbsp&nbsp<asp:TextBox ID="Title" runat="server" CssClass="txttitle" TextMode="MultiLine"></asp:TextBox><br />
<br />
<h2 style="padding-left:10px">Image</h2>
&nbsp&nbsp&nbsp<asp:FileUpload ID="FileUpload1" runat="server" CssClass="Browsefile" />
<br />
&nbsp;&nbsp;<br />
&nbsp;<br />
<br />
<h2 style="padding-left:10px">Content</h2>
<br />
&nbsp&nbsp&nbsp<asp:TextBox ID="content" runat="server" CssClass="txtcontent" TextMode="MultiLine"></asp:TextBox><br />
<br />
<asp:Button ID="Button1" runat="server" Text="Create Tutorial" CssClass="Createbutton" OnClick="Button1_Click" />
<br />          
</div>
<div class="footer">
<table border="0px" cellspacing="20px">
<tr>
<th style="font-size:30px">General Information</th><th style="font-size:30px">Connect Us</th>
</tr>
<tr>
<td style="font-size:20px"><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/All/Home Page.aspx" Font-Overline="False" ForeColor="White">Home</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/All/AboutUs.aspx" Font-Overline="False" ForeColor="White">About Us</asp:HyperLink></td>
</tr>
<tr>
<td style="font-size:20px"><asp:LinkButton ID="LinkButton3" runat="server" ForeColor="White" Font-Overline="false" OnClick="LinkButton3_Click" >Learn</asp:LinkButton></td><td class="ft"><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/All/JoinUs.aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink></td>
</tr>
<tr>
<td class="ft"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/All/BrowseBlog.aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/All/ContactUs.aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink></td>
</tr>
</table>
</div>
</form>
</body>
</html>
