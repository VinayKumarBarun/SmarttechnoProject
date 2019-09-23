<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css" />
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Baloo+Bhaijaan|Ubuntu');

        .payment {
            background: #f8f8f8;
            max-width: 583px;
            margin: 80px auto;
            height: auto;
            padding: 35px;
            padding-top: 70px;
            border-radius: 5px;
            position: relative;
        }

        .payment-logo {
            position: absolute;
            top: -50px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 100px;
            background: #f8f8f8;
            border-radius: 50%;
            box-shadow: 0 0 5px rgba(0,0,0,0.2);
            text-align: center;
            line-height: 85px;
        }

            .payment-logo:before {
                content: "";
                position: absolute;
                top: 5px;
                left: 5px;
                width: 90px;
                height: 90px;
                background: orange;
                border-radius: 50%;
            }

            .payment-logo p {
                position: relative;
                color: #f8f8f8;
                font-family: 'Baloo Bhaijaan', cursive;
                font-size: 58px;
            }

        .h2, h2 {
            font-size: 2rem;
            text-align: center;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <hr />
    <div class="wrapper">
        <div class="payment">
            <div class="payment-logo">
                <p>
                    p
                </p>
            </div>
            <h2>Payment Gateway</h2>
            <hr />
            <table class="w-100">
                <tr>
                    <td class="text-right" colspan="2">HolderName
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" Style="width: 369px; box-shadow: none;"
                            placeholder="   Enter Holder Name "></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </div>
   
</asp:Content>
