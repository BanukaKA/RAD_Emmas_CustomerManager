<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Emmas_ProjectWebApp.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            height: 1033px;
        }
    </style>
</head>
<body>
    <div style="background-image: url('https://img.freepik.com/free-vector/smooth-white-wave-background_52683-55288.jpg?w=2000'); background-size: cover;" class="auto-style3">
    <form id="form1" runat="server">
    <div style="height: 310px" class="text-center">
    
        <div class="text-center">
    
        <strong><span class="auto-style2">
            <br />
            <br />
            Register New User</span></strong><br />
        </div>
        <div class="text-center">
            <br />
            <br />
            <br />
            Username: <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                <br />
            <br />
&nbsp;Password:
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                <br />
            <br />
            Confirm:&nbsp;
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                <br />
            <br />
            <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="Register_Click" />
        <br />
            <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirm" ErrorMessage="Password does not match" SetFocusOnError="True"></asp:CompareValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Must confirm password" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
    
        </div>
    
    </div>
    </form>
</body>
</html>
