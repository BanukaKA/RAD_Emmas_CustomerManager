<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Emmas_ProjectWebApp.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 1218px;
        }
    </style>
</head>
<body>
    <div style="background-image: url('https://img.freepik.com/free-vector/smooth-white-wave-background_52683-55288.jpg?w=2000'); background-size: cover;">
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <table style="width:100%;">
            <tr>
                <td class="text-center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblWelcome" runat="server" Text="Welcome" CssClass="auto-style1"></asp:Label>
                &nbsp;<span class="auto-style1">To the Emmas POS System</span></td>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
        </table>
    
        <div class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; By Banuka Kumara Ambegoda<br />
            <br />
    
        <br />
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <br />
        </asp:Panel>
        <asp:Panel ID="pnlContent" runat="server" Visible="True">
            <div class="text-center">
                <asp:LinkButton ID="lnkHome" runat="server" CssClass="auto-style2" Enabled="False" OnClick="Submit_Click">Home</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkLogout" runat="server" CssClass="auto-style2" OnClick="Logout_Click" Visible="True">Logout</asp:LinkButton>
                <br />
            </div>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
