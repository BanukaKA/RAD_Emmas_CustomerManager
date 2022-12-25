<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_Order.aspx.cs" Inherits="Emmas_ProjectWebApp.Service_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <style type="text/css">
        .auto-style1 {
            height: 948px;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            font-size: medium;
            margin-left: 0;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            color: #FF0000;
        }
        .auto-style7 {
            font-size: medium;
            color: #FF0000;
        }
    </style>
    
</head>
<body style="height: 1070px">
    <div style="background-image: url('https://img.freepik.com/free-vector/smooth-white-wave-background_52683-55288.jpg?w=2000'); background-size: cover;" class="auto-style1">
    <form id="form1" runat="server">
        <div class="text-left">
            <strong><span class="auto-style2"> <span class="auto-style3">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="HomeButton" runat="server" CssClass="auto-style4" OnClick="HomeButton_Click" Text="&lt;-- " Height="30px" style="font-size: medium" Width="40px" />
            </span>Service<span class="auto-style3">
            </span>Order Management<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxbService" runat="server" CssClass="auto-style4" Width="219px"></asp:TextBox>
&nbsp;
            <asp:Button ID="SearchButton" runat="server" CssClass="auto-style3" Text="Search By Service" OnClick="SearchButton_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span><span class="auto-style6"><span class="auto-style3">&nbsp;&nbsp;
            </span></span><span class="auto-style2"> <span class="auto-style6">
            <asp:Label ID="Status" runat="server" CssClass="auto-style3"></asp:Label>
            </span>
            <br />
            <asp:GridView ID="GridViewServices" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" CssClass="auto-style3" AutoGenerateSelectButton="True" DataKeyNames="ID" Width="751px" GridLines="None" OnSelectedIndexChanged="GridViewServices_SelectedIndexChanged">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#C6C3C6" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <br />
            </span><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Selected Orders<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Status0" runat="server" CssClass="auto-style7"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="1022px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="serordDateIn" HeaderText="Order In Date" SortExpression="serordDateIn" />
                    <asp:BoundField DataField="serordDateOut" HeaderText="Order Out Date" SortExpression="serordDateOut" />
                    <asp:BoundField DataField="serordIssue" HeaderText="Order Issue" SortExpression="serordIssue" />
                    <asp:CheckBoxField DataField="serordWarranty" HeaderText="Warranty" SortExpression="serordWarranty" />
                    <asp:BoundField DataField="receiptID" HeaderText="Recipt ID" SortExpression="receiptID" />
                    <asp:BoundField DataField="serviceID" HeaderText="Service" SortExpression="serviceID" Visible="False" />
                    <asp:TemplateField HeaderText="Equipment" SortExpression="equipID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="ObjectDataSource3" DataTextField="equModel" DataValueField="id" SelectedValue='<%# Bind("equipID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource3" DataTextField="equModel" DataValueField="id" SelectedValue='<%# Bind("equipID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Employee" SortExpression="empID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="empFullName" DataValueField="id" SelectedValue='<%# Bind("empID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="empFullName" DataValueField="id" SelectedValue='<%# Bind("empID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Emmas_ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_serordDateIn" Type="DateTime" />
                    <asp:Parameter Name="Original_serordDateOut" Type="DateTime" />
                    <asp:Parameter Name="Original_serordIssue" Type="String" />
                    <asp:Parameter Name="Original_serordWarranty" Type="Boolean" />
                    <asp:Parameter Name="Original_receiptID" Type="Int32" />
                    <asp:Parameter Name="Original_serviceID" Type="Int32" />
                    <asp:Parameter Name="Original_equipID" Type="Int32" />
                    <asp:Parameter Name="Original_empID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="serordDateIn" Type="DateTime" />
                    <asp:Parameter Name="serordDateOut" Type="DateTime" />
                    <asp:Parameter Name="serordIssue" Type="String" />
                    <asp:Parameter Name="serordWarranty" Type="Boolean" />
                    <asp:Parameter Name="receiptID" Type="Int32" />
                    <asp:Parameter Name="serviceID" Type="Int32" />
                    <asp:Parameter Name="equipID" Type="Int32" />
                    <asp:Parameter Name="empID" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridViewServices" DefaultValue="1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="serordDateIn" Type="DateTime" />
                    <asp:Parameter Name="serordDateOut" Type="DateTime" />
                    <asp:Parameter Name="serordIssue" Type="String" />
                    <asp:Parameter Name="serordWarranty" Type="Boolean" />
                    <asp:Parameter Name="receiptID" Type="Int32" />
                    <asp:Parameter Name="serviceID" Type="Int32" />
                    <asp:Parameter Name="equipID" Type="Int32" />
                    <asp:Parameter Name="empID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_serordDateIn" Type="DateTime" />
                    <asp:Parameter Name="Original_serordDateOut" Type="DateTime" />
                    <asp:Parameter Name="Original_serordIssue" Type="String" />
                    <asp:Parameter Name="Original_serordWarranty" Type="Boolean" />
                    <asp:Parameter Name="Original_receiptID" Type="Int32" />
                    <asp:Parameter Name="Original_serviceID" Type="Int32" />
                    <asp:Parameter Name="Original_equipID" Type="Int32" />
                    <asp:Parameter Name="Original_empID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Emmas_ProjectLibrary.EmmasDataSetTableAdapters.employee1TableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Emmas_ProjectLibrary.EmmasDataSetTableAdapters.equipmentTableAdapter"></asp:ObjectDataSource>
            </span></strong>
        </div>
    </form>
</body>
</html>
