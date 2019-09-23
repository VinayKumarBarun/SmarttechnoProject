<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSection/MasterPage.master"
    AutoEventWireup="true" CodeFile="ItemMaster.aspx.cs" Inherits="AdminSection_ItemMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top: 80px;">
    </div>
    <div style="height: 600px; padding: 0px; margin-left: 20%; margin-right: 20%; background-color: #e9ecef;
        box-shadow: 5px 5px 20px 0px rgba(0,0,0,0.3);">
        <div class="container">
            <h1 style="text-align: center; padding-top: 20px;">
                Add Item Category
            </h1>
            <hr />
            <center style="margin-left: 100px;">
                <form id="Form1" runat="server">
                <table>
                    <tr>
                        <td style="padding-top: 20px;">
                            Select Category
                        </td>
                        <td>
                            <br />
                            <asp:DropDownList ID="DropCategory" style="box-shadow: none;" runat="server" class="form-control" Width="195px">
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Enter Item Name
                        </td>
                        <td>
                            <br />
                            <asp:TextBox ID="txtItemName" runat="server" style="box-shadow: none;" class="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                               &nbsp;  <asp:RequiredFieldValidator ID="rfv_txtItemName" runat="server" class="text-danger"
                                ErrorMessage="Please Enter Item Name" ControlToValidate="txtItemName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Enter Price
                        </td>
                        <td>
                            <br />
                            <asp:TextBox ID="txtPrice" style="box-shadow: none;" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            &nbsp;  <asp:RequiredFieldValidator ID="rfv_txtPrice" runat="server" class="text-danger"
                                ErrorMessage="Please Enter a Amount " ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Enter Brands Name
                        </td>
                        <td>
                            <br />
                            <asp:TextBox ID="txtBrandsName" style="box-shadow: none;" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                          &nbsp;   <asp:RequiredFieldValidator ID="rfv_txtBrandsName" runat="server" class="text-danger"
                                ErrorMessage="Please Enter a Brands Name  " ControlToValidate="txtBrandsName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Enter Product Code
                        </td>
                        <td>
                            <br />
                            <asp:TextBox ID="txtProductName" style="box-shadow: none;" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            &nbsp;  <asp:RequiredFieldValidator ID="rfv_txtProductName" runat="server" class="text-danger"
                                ErrorMessage="Please Enter Product Coode " ControlToValidate="txtProductName"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Available Status
                        </td>
                        <td>
                            <br />
                            <asp:TextBox ID="txtAvailableStatus" style="box-shadow: none;" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                          &nbsp;     <asp:RequiredFieldValidator ID="rfv_txtAvailableStatus" runat="server" class="text-danger"
                                ErrorMessage="Please Enter Available Status " ControlToValidate="txtAvailableStatus"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Upload Image
                        </td>
                        <td>
                            <br />
                            <asp:FileUpload ID="FileUpload1"  runat="server" Width="200px" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                        </td>
                        <td>
                            <br />
                            <br />
                            <asp:Button ID="btnAddItemCategory" runat="server" Text="Submit" class="btn btn-outline-success"
                                OnClick="btnAddItemCategory_Click" />
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                </form>
            </center>
        </div>
    </div>
    <div style="padding-top: 80px;">
    </div>
</asp:Content>
