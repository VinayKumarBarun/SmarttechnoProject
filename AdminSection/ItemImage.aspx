<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSection/MasterPage.master"
    AutoEventWireup="true" CodeFile="ItemImage.aspx.cs" Inherits="AdminSection_ItemImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        var loadFile = function (event) {
            var output = document.getElementById('output');
            output.src = URL.createObjectURL(event.target.files[0]);
        };
    </script>
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
    <div style="padding-top: 100px;">
    </div>
    <div class="jumbotron" style="margin-right: 20%; margin-left: 20%;">
        <h1 style="text-align: center; padding-top: 0px;">
            Add Item Image
        </h1>
        <hr />
        <center>
            <table>
                <tr>
                    <td>
                        Select Category:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_Category" class="form-control" runat="server" Style="height: 27px;
                            width: 126px; box-shadow: none;" AutoPostBack="true" OnSelectedIndexChanged="ddl_Category_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Select Item :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_Items" class="form-control" AutoPostBack="true" runat="server"
                            Style="height: 27px; width: 126px; box-shadow: none;" OnSelectedIndexChanged="ddl_Items_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Lbl_SelectImage" runat="server" Text="Select Image : "></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload_SelectImage" runat="server" onchange="loadFile(event)" />
                    </td>
                    <td>
                        <img id="output" width="200px" height="100px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox_isActive" runat="server" Text="isActive" Checked="true" />
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Btn_Submit" runat="server" Text="Submit" Style="height: 38px; margin-left: 10px;"
                            class="btn btn-outline-warning" OnClick="Btn_Submit_Click" />
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table>
                <tr>
                    <td>
                        <asp:DataList runat="server" ID="dlItems" RepeatDirection="Horizontal" RepeatColumns="6">
                            <ItemTemplate>
                                <asp:Image ID="img_ItemImage" runat="server" ImageUrl='<%#Eval("Image1") %>' Height="70px"
                                    Width="100px" />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
  
    <br />
    <br />
    <br />
</asp:Content>
