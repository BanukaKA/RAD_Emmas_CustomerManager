<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Emmas_ProjectWebApp.Default" %>

<!DOCTYPE html>
<!-- Name : Banuka Kumara Ambegoda
     PROG1210 - Final Project
     Date : 2022-12-16 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #0099FF;
        }
        .auto-style2 {
            height: 1141px;
        }
        .auto-style3 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <div style="background-image: url('https://img.freepik.com/free-vector/smooth-white-wave-background_52683-55288.jpg?w=2000'); background-size: cover;" class="auto-style2">
    <form id="form1" runat="server">
        <div class="auto-style1" style="text-align: center">
            <strong>
            <br />
            <br />
            <asp:Button ID="ButtonBack" runat="server" CssClass="auto-style3" OnClick="ButtonBack_Click" Text="&lt;--" />
&nbsp;Emmas POS System<br />
            <br />
            </strong><strong style="font-size: large">
            <br />
            <asp:Button ID="ButtonCustomer" runat="server" Text="Customers" Width="130px" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Button ID="ButtonInventory" runat="server" Text="Inventory" Width="128px" OnClick="ButtonInventory_Click" />
            <br />
            <br />
            <asp:Button ID="ButtonSales" runat="server" Text="Product Orders" Width="151px" OnClick="ButtonSales_Click" />
            <br />
            <asp:Button ID="ButtonService" runat="server" Text="Services" Width="118px" OnClick="ButtonService_Click" />
            </strong>
        </div>
    </form>
</body>
</html>
