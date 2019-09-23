<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 
    <div style="padding-top: 80px;">
    </div>
    <div style="height: 350px; padding: 0px; margin-left: 20%; margin-right: 20%; background-color: #e9ecef;
        box-shadow: 5px 5px 20px 0px rgba(0,0,0,0.3);">
        <div class="container">
            <h1 style="text-align: center; padding-top: 20px;">
                Admin Login Your Account
                <hr />
            </h1>
          
            <center style="margin-right: 100px;">
                <table>
                    <tr>
                        <td style="padding-top: 20px;">
                            Enter Your Email:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" ID="txtUserName" class="form-control" autocomplete="off" style=" box-shadow: none;"></asp:TextBox>
                            
                        </td>
                        <td>
                            <br />
                            <asp:RegularExpressionValidator ID="rev_txtUserName" runat="server" class="text-danger" 
                                Display="Dynamic" ErrorMessage="Please Enter Your Email" 
                                ControlToValidate="txtUserName" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Enter PassWord:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" ID="txtPassword" class="form-control" autocomplete="off" style=" box-shadow: none;"
                                TextMode="Password"></asp:TextBox>
                             
                        </td>
                        <td>
                            <br />
                             <asp:RequiredFieldValidator ID="rfv_txtPassword" runat="server" Display="Dynamic" 
                                ErrorMessage="Please Enter Your PassWord" class="text-danger" 
                                ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                        </td>
                        <td>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-outline-success"
                                OnClick="Button1_Click" style=" box-shadow: none;"  />
                        </td>
                        <td>
                         <asp:Label ID="lblAdminMsg" runat="server" Text=" " class="text-danger"></asp:Label></td>
                        <td>
                           
                        </td>
                    </tr>
                </table>
                </center>
               
        </div>
        
        
        
        
    </div>
   
    <div style="padding-top: 0px;">
    </div>
   
</asp:Content>
