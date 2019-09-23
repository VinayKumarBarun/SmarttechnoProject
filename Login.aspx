<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
 <div style="height: 450px; padding: 0px; margin-left: 20%; margin-right: 20%; background-color: #e9ecef;
        box-shadow: 5px 5px 20px 0px rgba(0,0,0,0.3);">
    <div class=" container ">
        <h1 style="text-align: center; padding-top: 20px;">
            Login Your Account
            <hr />
        </h1>
        <center style="margin-right: 100px;">
            <asp:Label runat="server" ID="lbl_info" ></asp:Label>
            <table>
                <tr>
                    <td>
                        <br />
                        Enter Your Email:
                    </td>
                    <td>
                        <br />
                        <asp:TextBox runat="server" ID="txtEmail" class="form-control " autocomplete="off"
                            Style="box-shadow: none;"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                        <asp:RegularExpressionValidator ID="rev_txtUserName" runat="server" class="text-danger"
                            Display="Dynamic" ErrorMessage="Please Enter Your Email" ControlToValidate="txtEmail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <br />
                <tr>
                    <td>
                        <br />
                        Enter PassWord:
                    </td>
                    <td>
                        <br />
                        <asp:TextBox runat="server" ID="txtPassword" class="form-control" autocomplete="off"
                            Style="box-shadow: none;" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                        <asp:RequiredFieldValidator ID="rfv_txtPassword" runat="server" Display="Dynamic"
                            ErrorMessage="Please Enter Your PassWord " class="text-danger" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 20px;">
                        &nbsp;
                    </td>
                    <td>
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Button runat="server" ID="btnLogin" Text="Submit" class="btn btn-outline-success"
                            OnClick="btnLogin_Click" />
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="text-danger"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 20px;">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="padding-top: 20px;">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl_Message" runat="server"></asp:Label>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/sign-in-google.png" Width="200px"   ValidationGroup="VG_Btn_Login"  />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </center>
    </div>
    </div>
    <div style="padding-top: 40px;">
    </div>
</asp:Content>
