<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseBlog(Visitor).aspx.cs" Inherits="Assignment.Visitor.BrowseBlog_Visitor_" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Tutorial</title>
<link href="../All/HF.css" rel="stylesheet" />
<style>
  .content{
  height:1000px;
  
}
  .profile-picture {
    width: 80px;
    height: 80px;
    overflow: hidden;
    border: 2px solid #4CAF50;
    background-color: white;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 10px;
    margin-right: 20px;
    }

.profile-picture img {
    width: 100%;
    height: auto;
}
  .blog-container{
      display:flex;
      justify-content:center;
      align-items:center;
      margin:20px 0;
      flex-wrap:wrap;
      max-width: 100%;
  }
  .blog-box{
      flex: 1 1 30%;
      width:30%;
      max-width:300px;
      min-width: 280px;
      background-color:white;
      border:1px solid #ececec;
      margin: 70px;
  }
  .blog-img{
      width:100%;
      height:auto;
  }
  .blog-img img{
      width:100%;
      height:100%;
      object-fit:cover;
      object-position:center;
  }
  .blog-text{
       display: -webkit-box;
       -webkit-line-clamp: 5; /* Number of lines to show */
       -webkit-box-orient: vertical;
       overflow: hidden;
       text-overflow: ellipsis;
  }
  .blog-row {
    justify-content:flex-start;
    display: flex;
    flex-wrap: wrap;
    width: 100%;
    margin-bottom: 20px;
}
    .auto-style1 {
        margin-left: 1040px;
    }
    .DA{
        color:darkgray;
        font-size:0.9rem;
    }
    .T{
        color:black;
        font-size:1.2rem;
    }
    .C{
        color:black;
        font-size:1.0rem;
    }
</style>
</head>
<body>
<form id="form1" runat="server">
        <header class="header">
            <h1>SproutSpace</h1>
            <nav class="nav-links">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Visitor/Home Page(Visitor).aspx" Font-Overline="False" ForeColor="White">Home</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Visitor/BrowseTutorial(Visitor).aspx" Font-Overline="False" ForeColor="White">Learn</asp:HyperLink>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Visitor/BrowseBlog(Visitor).aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Visitor/AboutUs(Visitor).aspx" Font-Overline="False" ForeColor="White">About Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Visitor/JoinUs(Visitor).aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Visitor/ContactUs(Visitor).aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/All/Login Page.aspx" Font-Overline="False" ForeColor="White">Sign In</asp:HyperLink>
            </nav>
        </header>
<div class="content">

<asp:PlaceHolder ID="BlogDisplay" runat="server"></asp:PlaceHolder>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</div>

<div class="footer">
<table border="0px" cellspacing="20px">
<tr>
<th style="font-size:30px">General Information</th><th style="font-size:30px">Connect Us</th>
</tr>
<tr>
<td style="font-size:20px"><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Visitor/Home Page(Visitor).aspx" Font-Overline="False" ForeColor="White">Home</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Visitor/AboutUs(Visitor).aspx" Font-Overline="False" ForeColor="White">About Us</asp:HyperLink></td>
</tr>
<tr>
<td style="font-size:20px"><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Visitor/BrowseTutorial(Visitor).aspx" Font-Overline="False" ForeColor="White">Learn</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Visitor/JoinUs(Visitor).aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink></td>
</tr>
<tr>
<td class="ft"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Visitor/BrowseBlog(Visitor).aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Visitor/ContactUs(Visitor).aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink></td>
</tr>
</table>
</div>
</form>
</body>
</html>
