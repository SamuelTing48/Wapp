<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseTutorial(Visitor).aspx.cs" Inherits="Assignment.Visitor.BrowseTutorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Browse Tutorial</title>
<link href="../All/HF.css" rel="stylesheet" />
<style>
    .tutorial-container{
      display:flex;
      justify-content:center;
      align-items:center;
      flex-wrap:wrap;
      max-width: 100%;
      }
      .tutorial-box{
      flex: 1 1 30%;
      width:30%;
      max-width:400px;
      min-width: 300px;
      background-color:white;
      border:1px solid #ececec;
      margin: 100px;
      }
      .tutorial-img{
          width:100%;
          height:auto;
      }
      .tutorial-img img{
          width:100%;
          height:100%;
          object-fit:cover;
          object-position:center;
      }
      .tutorial-text{
           display: -webkit-box;
           -webkit-line-clamp: 5; /* Number of lines to show */
           -webkit-box-orient: vertical;
           overflow: hidden;
           text-overflow: ellipsis;
      }
      .tutorial-row {
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
<!-- Content for the page Should be below here -->
<h2>Tutorial Browser</h2>

<div class="content">

<asp:PlaceHolder ID="TutorialDisplay" runat="server"></asp:PlaceHolder>

</div>

<!-- This part of the code is used for the tutorial browser im not sure how to add more since this is a list of items and data -->
<!-- note: the boxes can resize dynamically and the web size is infinite go ham with it -->
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