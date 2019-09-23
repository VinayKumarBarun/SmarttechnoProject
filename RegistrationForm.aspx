<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding-top: 80px;">
    </div>
    <div style="height: 600px; padding: 0px; margin-left: 20%; margin-right: 20%; background-color: #e9ecef; box-shadow: 5px 5px 20px 0px rgba(0,0,0,0.3);">
        <div class="container">
            <h1 style="text-align: center; padding-top: 20px;">Registration Form
                <hr />
            </h1>
            <center >
                <table>
                    <tr>
                        <td style="padding-top: 20px;">
                            First Name:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" type="text" ID="txtFirstName" class="form-control" autocomplete="off"  style="box-shadow:none;"  ></asp:TextBox>
                        </td>
                        <td>
                            <br />
                        <asp:RequiredFieldValidator ID="rfv_txtFirstName" Display="Dynamic" runat="server"
                                ErrorMessage="Please Enter Your Name " class="text-danger" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Last Name:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" ID="txtLastName" class="form-control" autocomplete="off"  style="box-shadow:none;"  ></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            &nbsp;<asp:RequiredFieldValidator ID="rfv_txtLastName" Display="Dynamic" runat="server"
                                ErrorMessage="Please Enter Your Last Name " class="text-danger" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            E-Mail:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" type="text" ID="txtEmail" class="form-control" autocomplete="off"  style="box-shadow:none;"  ></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            
                            &nbsp;
                            <asp:RegularExpressionValidator ID="rev_txtEmail" Display="Dynamic" runat="server"
                                class="text-danger" ErrorMessage="Please Enter Your Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Phone Number:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" ID="txtPhoneNo" class="form-control" style="box-shadow:none;" autocomplete="off"    />
                        </td>
                        <td>
                            <br />
                            &nbsp;<asp:RequiredFieldValidator ID="rfv_txtPhoneNo" Display="Dynamic" runat="server" ErrorMessage="Please Enter Your Mobile Number"
                                class="text-danger" ControlToValidate="txtPhoneNo"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Company Name:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" type="text" ID="txtCompany" class="form-control" style="box-shadow:none;" autocomplete="off"   ></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            &nbsp;<asp:RequiredFieldValidator ID="rfv_txtCompany" Display="Dynamic" runat="server" ErrorMessage="Please Enter Your Company Name"
                                class="text-danger" ControlToValidate="txtCompany"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            Pin Code:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" type="text" ID="txtpincode" class="form-control" style="box-shadow:none;" autocomplete="off"  ></asp:TextBox>
                        </td>
                        <td>
                            <br />
                            &nbsp;<asp:RequiredFieldValidator ID="rfv_pincode" Display="Dynamic" runat="server" ErrorMessage="Please Enter Your Pin Code"
                                class="text-danger" ControlToValidate="txtpincode"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                           Address:
                        </td>
                        <td>
                            <br />
                            <asp:TextBox runat="server" type="text" ID="txt_Address" class="form-control" style="box-shadow:none;" autocomplete="off"  ></asp:TextBox>
                        </td>
                        <td>
                            <br />
                        
                           &nbsp;<asp:RequiredFieldValidator ID="rfv_Address" runat="server" ErrorMessage="Please Enter Address"
                                class="text-danger" ControlToValidate="txt_Address"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            Select Profile Image:
                        </td>
                        
                        <td>
                            <br />
                            <asp:FileUpload ID="Fu_profile" runat="server" Height="30px" Width="167px"></asp:FileUpload> 
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            &nbsp;
                        </td>
                        <td>
                            <br />
                            <asp:Button runat="server" Style="margin-left: 55px;  box-shadow: none;" type="button" class="btn btn-outline-primary"
                                Text="Submit" ID="btn_RegistrationFrom" 
                                onclick="btn_RegistrationFrom_Click"   />
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="lbl_message" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 20px;">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="label3" runat="server"></asp:Label>
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
                </table>
                 </center>
        </div>

    </div>
</asp:Content>
