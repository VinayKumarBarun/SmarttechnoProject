<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSection/MasterPage.master"
    AutoEventWireup="true" CodeFile="CategoryMaster.aspx.cs" Inherits="AdminSection_CategoryMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="../js/JScript.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
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
    <div style="padding-top: 80px;">
    </div>
    <div style="height: 450px; padding: 0px; margin-left: 20%; margin-right: 20%; background-color: #e9ecef;
        box-shadow: 5px 5px 20px 0px rgba(0,0,0,0.3);">
        <div class="container">
            <h1 style="text-align: center; padding-top: 20px;">
                Category Master
            </h1>
            <hr />
            <center style="margin-left: 100px;">
                <form runat="server">
                <table>
                    <tr>
                        <td style="padding-top: 20px;">
                            Category Name :
                        </td>
                        <td>
                            <br />
                            <asp:TextBox ID="txtcatname" runat="server" class="form-control" MaxLength="10" Style="box-shadow: none;"></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            &nbsp;<asp:RequiredFieldValidator ID="rfv_txtcatname" runat="server" ErrorMessage="Please Enter  Category Name "
                                class="text-danger" ControlToValidate="txtcatname" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                        </td>
                        <td>
                            <br />
                            <asp:CheckBox runat="server" ID="checkbox_isactive" Text="Is Active" />
                            <asp:CheckBox runat="server" ID="checkboxShowInHeader" Text="Show In Header" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Upload Image :
                        </td>
                        <td>
                            <br />
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" onchange="loadFile(event)"
                                accept=".jpg,.png,.bmp" />
                            <br />
                            &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="regexValidator" runat="server"
                                ControlToValidate="FileUpload1" ErrorMessage="Only JPEG images are allowed" ValidationExpression="(.*\.([Jj][Pp][Gg])|.*\.([Jj][Pp][Ee][Gg])$)"
                                class="text-danger"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <img id="output" width="200px" height="100px;" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Category Order
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="ddl_Categoryid">
                                <asp:ListItem Value="1"></asp:ListItem>
                                <asp:ListItem Value="2"></asp:ListItem>
                                <asp:ListItem Value="3"></asp:ListItem>
                                <asp:ListItem Value="4"></asp:ListItem>
                                <asp:ListItem Value="5"></asp:ListItem>
                                <asp:ListItem Value="6"></asp:ListItem>
                                <asp:ListItem Value="7"></asp:ListItem>
                                <asp:ListItem Value="8"></asp:ListItem>
                                <asp:ListItem Value="9"></asp:ListItem>
                                <asp:ListItem Value="10"></asp:ListItem>
                            </asp:DropDownList>
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
                            <asp:Button ID="btncategory" runat="server" Text="Submit" class="btn btn-outline-primary"
                                OnClick="btncategory_Click" />
                         
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                </form>
            </center>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div class="container">
   
        <asp:GridView runat="server" ID="Grd_Categoryid1" Width="100%" class="table table-striped"
            HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" 
            AutoGenerateColumns="false" onrowcommand="Grd_Categoryid1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="S.No.">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                        <asp:HiddenField runat="server" ID="hfCategoryID" Value='<%#Eval("categoryID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category Name">
                    <ItemTemplate>
                        <asp:Label ID="lbl_CategoryName" runat="server" Text='<%#Eval("category_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Status" runat="server" Text='<%#Eval("IsActive") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <%-- <asp:Label ID="lbl_DisplayImage" runat="server" Text='<%#Eval("DisplayImage") %>'></asp:Label>--%>
                        <asp:Image ID="Image_Display" runat="server" ImageUrl='<%#Eval("DisplayImage") %>'
                            Height="70px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category Order">
                    <ItemTemplate>
                        <asp:Label ID="lbl_CategoryOrder" runat="server" Text='<%#Eval("category_order") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton Text="Edit" runat="server" ID="lnk_Edit" ValidationGroup="valEdit"
                            CommandName="redit" CommandArgument='<%#Eval("categoryid") %>' ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
</asp:Content>
