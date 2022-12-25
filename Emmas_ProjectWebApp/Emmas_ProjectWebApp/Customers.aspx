<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Emmas_ProjectWebApp.Customers" %>

<!DOCTYPE html>
<!-- Name : Banuka Kumara Ambegoda
     PROG1210 - Final Project
     Date : 2022-12-16 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="Styles/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            font-size: medium;
            text-align: center;
        }
        body {
            text-align: center;
        }
        form {
            display: inline-block;
        }
        .auto-style4 {
            color: #666666;
        }
        .auto-style5 {
            font-size: large;
            text-align: center;
            text-decoration: underline;
        }
        .auto-style6 {
            height: 1892px;
        }
        </style>
</head>
<body>
    <div style="background-image: url('https://img.freepik.com/free-vector/smooth-white-wave-background_52683-55288.jpg?w=2000'); background-size: cover;" class="auto-style6">
    <form id="form1" runat="server">
        <div>
            <strong><span class="auto-style2"><span class="auto-style4">
            
            <br />
            <br />
            <br />
            Manage Customers<br />
            </span><br />
            </span>Search Through Customers First<span class="auto-style1"><br />
            <br />
            </span></strong>
            <span class="auto-style3">Customer First Name : </span><span class="auto-style1">
            <strong>
            <asp:TextBox ID="TxbFirstName" runat="server" Width="152px"></asp:TextBox>
            <br />
            </strong>
            </span>
            <br />
            Customer Last Name :
            <asp:TextBox ID="TxbLastName" runat="server" Width="149px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            Customer City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxbCustomerCity" runat="server" Width="146px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Equipment Type :&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="EquipmentDropDown" runat="server" AppendDataBoundItems="True" DataSourceID="ObjectDataSource4" DataTextField="eqtType" DataValueField="id" Height="16px" Width="127px" style="margin-left: 0px">
                <asp:ListItem Selected="True">None</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <br />
            <br />
            <asp:Button ID="SearchByCustomer" runat="server" OnClick="SearchByCustomer_Click" PostBackUrl="~/Customers.aspx" Text="Search" Width="75px" />
            <br />
            <br />
            <asp:Label ID="Status" runat="server" style="color: #FF0000"></asp:Label>
            <br />
            <br />
            <span class="auto-style5"><strong>Searched Data</strong></span><br />
            <br />
            <asp:ListBox ID="LstBxCustomers" runat="server" Height="187px" Width="287px" AutoPostBack="True" style="color: #800000" OnSelectedIndexChanged="LstBxCustomers_SelectedIndexChanged"></asp:ListBox>
            <br />
            <br />
            <asp:FormView ID="CustDataFormView" runat="server" CellPadding="3" DataKeyNames="id" DataSourceID="ObjectDataSource5" Width="380px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" GridLines="Both" OnItemUpdated="CustDataFormView_ItemUpdated" OnItemDeleted="CustDataFormView_ItemDeleted" OnItemInserted="CustDataFormView_ItemInserted" style="text-align: center" CellSpacing="2">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    custFirst:
                    <asp:TextBox ID="custFirstTextBox" runat="server" Text='<%# Bind("custFirst") %>' />
                    <br />
                    custLast:
                    <asp:TextBox ID="custLastTextBox" runat="server" Text='<%# Bind("custLast") %>' />
                    <br />
                    custPhone:
                    <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                    <br />
                    custAddress:
                    <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                    <br />
                    custCity:
                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custPostal:
                    <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                    <br />
                    custEmail:
                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    custFull:
                    <asp:TextBox ID="custFullTextBox" runat="server" Text='<%# Bind("custFull") %>' />
                    <br />
                    custFullAdress:
                    <asp:TextBox ID="custFullAdressTextBox" runat="server" Text='<%# Bind("custFullAdress") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    custFirst:
                    <asp:TextBox ID="custFirstTextBox" runat="server" Text='<%# Bind("custFirst") %>' />
                    <br />
                    custLast:
                    <asp:TextBox ID="custLastTextBox" runat="server" Text='<%# Bind("custLast") %>' />
                    <br />
                    custPhone:
                    <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                    <br />
                    custAddress:
                    <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                    <br />
                    custCity:
                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custPostal:
                    <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                    <br />
                    custEmail:
                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    custFull:
                    <asp:TextBox ID="custFullTextBox" runat="server" Text='<%# Bind("custFull") %>' />
                    <br />
                    custFullAdress:
                    <asp:TextBox ID="custFullAdressTextBox" runat="server" Text='<%# Bind("custFullAdress") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    custFirst:
                    <asp:Label ID="custFirstLabel" runat="server" Text='<%# Bind("custFirst") %>' />
                    <br />
                    custLast:
                    <asp:Label ID="custLastLabel" runat="server" Text='<%# Bind("custLast") %>' />
                    <br />
                    custPhone:
                    <asp:Label ID="custPhoneLabel" runat="server" Text='<%# Bind("custPhone") %>' />
                    <br />
                    custAddress:
                    <asp:Label ID="custAddressLabel" runat="server" Text='<%# Bind("custAddress") %>' />
                    <br />
                    custCity:
                    <asp:Label ID="custCityLabel" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custPostal:
                    <asp:Label ID="custPostalLabel" runat="server" Text='<%# Bind("custPostal") %>' />
                    <br />
                    custEmail:
                    <asp:Label ID="custEmailLabel" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    custFull:
                    <asp:Label ID="custFullLabel" runat="server" Text='<%# Bind("custFull") %>' />
                    <br />
                    custFullAdress:
                    <asp:Label ID="custFullAdressLabel" runat="server" Text='<%# Bind("custFullAdress") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;
                    <asp:LinkButton ID="NewButton0" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:FormView>
            <br />
            <br />
            <br />
            <strong style="font-size: large">
            <asp:Button ID="Button2" runat="server" Text="Go Back" Width="89px" OnClick="Button2_Click" />
            </strong>
            <br />
            <br />
            <br />
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Emmas_ProjectLibrary.EmmasDataSetTableAdapters.Equip_TypeTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Emmas_ProjectLibrary.EmmasDataSetTableAdapters.CustomerDataTableAdapter" UpdateMethod="Update" DeleteMethod="Delete" InsertMethod="Insert">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="LstBxCustomers" Name="Param1" PropertyName="SelectedValue" Type="Int32" DefaultValue="1" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
