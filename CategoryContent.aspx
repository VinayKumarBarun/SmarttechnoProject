<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CategoryContent.aspx.cs" Inherits="CategoryContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <hr />
 
    <asp:DataList ID="dl1" runat="server" RepeatColumns="6" 

        RepeatDirection="Horizontal"  >
        <ItemTemplate>
            <div class="container">
                <div class="card" style=" box-shadow: 2px 2px 20px black; border-radius: 5px;">
            
                
           <a style="width:218px;" runat="server" id="lnk_href" href='<%# "Description.aspx?itemid="+ Eval("itemID") %>'>
                   
                        <img id="img_image" style="width: 218px;" src='<%#Eval("ImageUpload1") %>' class="card-img-top"
                            alt="..." height="190px">
                        <div style="background-color: #000000; height: 52px; text-align: center; color: White;
                            padding-top: 10px;">
                            <asp:Label runat="server" ID="lbl_name" Text='<%#Eval("ItemName") %>'></asp:Label>
                        </div>
                        </a>
                         <div style="background-color:Gray; height: 40px; text-align: center; color: White;
                            padding-top: 10px;">
                              <asp:Label runat="server" ID="lbl_rs" Text="Rs:"></asp:Label>
                            <asp:Label runat="server" ID="Label1" Text='<%#Eval("Price") %>'></asp:Label>
                        </div>
                 
                  <div>
                       <%--  <asp:Button runat="server" class="btn btn-outline-warning" ID="btn_AddToCard" Text="Add To Card"
                            Width="218px"/>--%>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <asp:GridView runat="server" /> 
    

</asp:Content>
