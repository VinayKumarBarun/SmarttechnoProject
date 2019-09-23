<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Description.aspx.cs" Inherits="Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/w3.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            if (n > x.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = x.length }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
            }
            x[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " w3-opacity-off";
        }



        $('.tile')
        // tile mouse actions
    .on('mouseover', function () {
        $(this).children('.photo').css({ 'transform': 'scale(' + $(this).attr('data-scale') + ')' });
    })
    .on('mouseout', function () {
        $(this).children('.photo').css({ 'transform': 'scale(1)' });
    })
    .on('mousemove', function (e) {
        $(this).children('.photo').css({ 'transform-origin': ((e.pageX - $(this).offset().left) / $(this).width()) * 100 + '% ' + ((e.pageY - $(this).offset().top) / $(this).height()) * 100 + '%' });
    })
        // tiles set up
    .each(function () {
        $(this)
        // add a photo container
        .append('<div class="photo"></div>')
        // some text just to show zoom level on current item in this example
        .append('<div class="txt"><div class="x">' + $(this).attr('data-scale') + 'x</div>ZOOM ON<br>HOVER</div>')
        // set up a background image for each tile based on data-image attribute
        .children('.photo').css({ 'background-image': 'url(' + $(this).attr('data-image') + ')' });
    })


    </script>
    <style type="text/css">
        #img_image:hover
        {
            -ms-transform: scale(2.5); /* IE 9 */
            -webkit-transform: scale(1.5); /* Safari 3-8 */
            transform: scale(1.5);
            
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <hr />
    <div class="container">
        <asp:DataList runat="server" ID="dl" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <div class="w3-content" style="max-width: 1200px">
                                <div class="card ">
                                    <img id="img_image" style="width: 323px; height: 261px;" src='<%#Eval("ImageUpload1") %>'
                                        class="mySlides" alt="..." height="390px">
                                    <div style="background-color: #000000; height: 58px; text-align: center; color: White;
                                        padding-top: 10px;">
                                        <asp:Label runat="server" ID="lbl_ItemName" Text='<%#Eval("ItemName") %>'></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td valign="top">
                            <div style="margin-left: 20px;">
                                <h1>
                                    <u>
                                        <asp:Label runat="server" ID="lbl_ItemName1" Text='<%#Eval("ItemName") %>'></asp:Label>
                                    </u>
                                </h1>
                                <h2>
                                    <asp:Label runat="server" Style="color: Black;" ID="lbl_rs" Text="Rs:"></asp:Label>
                                    <u>
                                        <asp:Label runat="server" ID="lbl_Price" Text='<%#Eval(" Price") %>'></asp:Label>
                                    </u>
                                </h2>
                                <hr style="width: 998px;" />
                                <table>
                                    <tr>
                                        <td>
                                            <img src="Image/Add2.jpeg" style="float: right;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_price3" Style="color: Black;" runat="server" Text="Inclusive Tax : "></asp:Label>
                                            <u>
                                                <asp:Label runat="server" ID="lbl_Price1" Text='<%#Eval("Price") %>'></asp:Label>
                                            </u>
                                            <br />
                                            <asp:Label ID="lbl_BrandName" Style="color: Black;" runat="server" Text="Brand Name : "></asp:Label>
                                            <asp:Label runat="server" ID="Label2" Text='<%#Eval("BrandID") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_Product" Style="color: Black;" runat="server" Text="Product Code : "></asp:Label>
                                            <asp:Label runat="server" ID="lbl_productcode" Text='<%#Eval("ProductCode") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <td>
                                        <asp:Label ID="lbl_Available" Style="color: Black;" runat="server" Text="Available Stock: "></asp:Label>
                                        <asp:Label runat="server" ID="lbl_AvailableStock" Text='<%#Eval("AvailableStock") %>'></asp:Label>
                                    </td>
                    </tr>
                </table>
                <br />
                <div style="width: 100px;">
                    <%--              <a href="Index.aspx">
                        <img style="float: right;" src="AddImage/05242019-060115637-728x90_cricket_DBM.jpg"
                            alt="Advertisement" border="0" width="728" height="90">/</a></div>--%>
                    <div style="width: 791px; margin-left: 161px;">
                        <asp:Button runat="server" ID="Btn_ItemAdd" Text="Add To Cart" class="btn btn-outline-warning"
                            Style="width: 142px; border-radius: 27px; height: 37px; }" />
                        <asp:Button runat="server" ID="Btn_buynow" Text="Buy Now" class="btn btn-warning"
                            Style="margin-left: 77px; width: 142px; border-radius: 27px; height: 37px;" OnClick="Btn_buynow_Click" />
                    </div>
                </td> </tr> </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:DataList runat="server" ID="dlItems" RepeatDirection="Horizontal" RepeatColumns="11">
            <ItemTemplate>
                <asp:Image ID="img_ItemImage" class="demo" runat="server" ImageUrl='<%#Eval("ImageUpload1") %>'
                    Height="70px" Width="100px" onclick="currentDiv(1)" />
            </ItemTemplate>
        </asp:DataList>
    </div>
    <hr />
    <h1>
        Description Section using Ck Editor</h1>
</asp:Content>
