<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Emmas_ProjectWebApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            height: 1234px;
        }
    </style>
</head>
<body>
    <div style="background-image: url('https://img.freepik.com/free-vector/smooth-white-wave-background_52683-55288.jpg?w=2000'); background-size: cover;" class="auto-style3">
    <form id="form1" runat="server">
    <div class="text-center">
    
        <div class="text-center">
    
        <span class="auto-style2">
            <br />
            <br />
            Login<br />
            <br />
            </span><br />
            Username:&nbsp; <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                <br />
        <br />
        </div>
        Password:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Login_Click" Width="78px" />
        <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" CausesValidation="False" Text="Register" OnClick="Register_Click" />
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
    
    </div>
    </form>
</body>
</html>
