<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="Emmas_ProjectWebApp.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1200px;
        }
        .auto-style2 {
            color: #FF3300;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <div style="background-image: url('https://img.freepik.com/free-vector/smooth-white-wave-background_52683-55288.jpg?w=2000'); background-size: cover;" class="auto-style1">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;
            <asp:Button ID="HomeButton" runat="server" CssClass="auto-style4" OnClick="HomeButton_Click" Text="&lt;-- " />
&nbsp;&nbsp; Products and Inventory Management</span><br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxbSearch" runat="server" Height="24px" Width="205px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnSearch" runat="server" OnClick="BtnSearch_Click" Text="Search" Width="105px" />
            &nbsp; by&nbsp; Product Name<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Status" runat="server" CssClass="auto-style2"></asp:Label>
            <br />
            <div class="text-center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridViewProduct" runat="server" Width="909px" AutoGenerateSelectButton="True" AllowSorting="True" DataKeyNames="ID" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="text-center">
                <asp:FormView ID="ProductForm" runat="server" Height="164px" Width="940px" DataKeyNames="id" DataSourceID="ObjectDataSource1" OnItemDeleted="ProductForm_ItemDeleted" OnItemInserted="ProductForm_ItemInserted" OnItemUpdated="ProductForm_ItemUpdated" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
                    <EditItemTemplate>
                        id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        prodName:
                        <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                        <br />
                        prodDescription:
                        <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                        <br />
                        prodBrand:
                        <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        prodName:
                        <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                        <br />
                        prodDescription:
                        <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                        <br />
                        prodBrand:
                        <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ID :
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        Product Name:
                        <asp:Label ID="prodNameLabel" runat="server" Text='<%# Bind("prodName") %>' />
                        <br />
                        Product Description:
                        <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Bind("prodDescription") %>' />
                        <br />
                        Product Brand:
                        <asp:Label ID="prodBrandLabel" runat="server" Text='<%# Bind("prodBrand") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:FormView>
                    <asp:FormView ID="InventoryForm" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource2" OnItemDeleted="InventoryForm_ItemDeleted" OnItemInserted="InventoryForm_ItemInserted" OnItemUpdated="InventoryForm_ItemUpdated" Width="942px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
                        <EditItemTemplate>
                            invQuantity:
                            <asp:TextBox ID="invQuantityTextBox" runat="server" Text='<%# Bind("invQuantity") %>' />
                            <br />
                            invMeasure:
                            <asp:TextBox ID="invMeasureTextBox" runat="server" Text='<%# Bind("invMeasure") %>' />
                            <br />
                            invSize:
                            <asp:TextBox ID="invSizeTextBox" runat="server" Text='<%# Bind("invSize") %>' />
                            <br />
                            invPrice:
                            <asp:TextBox ID="invPriceTextBox" runat="server" Text='<%# Bind("invPrice") %>' />
                            <br />
                            productID:
                            <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
                            <br />
                            id:
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            invQuantity:
                            <asp:TextBox ID="invQuantityTextBox" runat="server" Text='<%# Bind("invQuantity") %>' />
                            <br />
                            invMeasure:
                            <asp:TextBox ID="invMeasureTextBox" runat="server" Text='<%# Bind("invMeasure") %>' />
                            <br />
                            invSize:
                            <asp:TextBox ID="invSizeTextBox" runat="server" Text='<%# Bind("invSize") %>' />
                            <br />
                            invPrice:
                            <asp:TextBox ID="invPriceTextBox" runat="server" Text='<%# Bind("invPrice") %>' />
                            <br />
                            productID:
                            <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
                            <br />

                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Inventory Item Quantity:
                            <asp:Label ID="invQuantityLabel" runat="server" Text='<%# Bind("invQuantity") %>' />
                            <br />
                            Item Measure:
                            <asp:Label ID="invMeasureLabel" runat="server" Text='<%# Bind("invMeasure") %>' />
                            <br />
                            Inventory Size:
                            <asp:Label ID="invSizeLabel" runat="server" Text='<%# Bind("invSize") %>' />
                            <br />
                            Price in Inventory:
                            <asp:Label ID="invPriceLabel" runat="server" Text='<%# Bind("invPrice") %>' />
                            <br />
                            ID of product :
                            <asp:Label ID="productIDLabel" runat="server" Text='<%# Bind("productID") %>' />
                            <br />
                            Inventory ID:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:FormView>
                    <br />
                </div>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Emmas_ProjectLibrary.EmmasDataSetTableAdapters.ProductDataTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_id" Type="Int32" />
                        <asp:Parameter Name="Original_prodName" Type="String" />
                        <asp:Parameter Name="Original_prodDescription" Type="String" />
                        <asp:Parameter Name="Original_prodBrand" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="prodDescription" Type="String" />
                        <asp:Parameter Name="prodBrand" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewProduct" DefaultValue="1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="prodDescription" Type="String" />
                        <asp:Parameter Name="prodBrand" Type="String" />
                        <asp:Parameter Name="Original_id" Type="Int32" />
                        <asp:Parameter Name="Original_prodName" Type="String" />
                        <asp:Parameter Name="Original_prodDescription" Type="String" />
                        <asp:Parameter Name="Original_prodBrand" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Emmas_ProjectLibrary.EmmasDataSetTableAdapters.inventoryTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_invQuantity" Type="Int32" />
                        <asp:Parameter Name="Original_invMeasure" Type="String" />
                        <asp:Parameter Name="Original_invSize" Type="Decimal" />
                        <asp:Parameter Name="Original_invPrice" Type="Decimal" />
                        <asp:Parameter Name="Original_productID" Type="Int32" />
                        <asp:Parameter Name="Original_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="invQuantity" Type="Int32" />
                        <asp:Parameter Name="invMeasure" Type="String" />
                        <asp:Parameter Name="invSize" Type="Decimal" />
                        <asp:Parameter Name="invPrice" Type="Decimal" />
                        <asp:Parameter Name="productID" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewProduct" DefaultValue="1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="invQuantity" Type="Int32" />
                        <asp:Parameter Name="invMeasure" Type="String" />
                        <asp:Parameter Name="invSize" Type="Decimal" />
                        <asp:Parameter Name="invPrice" Type="Decimal" />
                        <asp:Parameter Name="productID" Type="Int32" />
                        <asp:Parameter Name="Original_invQuantity" Type="Int32" />
                        <asp:Parameter Name="Original_invMeasure" Type="String" />
                        <asp:Parameter Name="Original_invSize" Type="Decimal" />
                        <asp:Parameter Name="Original_invPrice" Type="Decimal" />
                        <asp:Parameter Name="Original_productID" Type="Int32" />
                        <asp:Parameter Name="Original_id" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </form>
</body>
</html>
