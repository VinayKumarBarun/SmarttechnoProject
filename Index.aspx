<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .dl_css
        {
            width: 100%;
        }
        .card
        {
            box-shadow: 2px 2px 20px black;
            border-radius: 5px;
            width: 217px;
            margin-left: 22px; 
        }
        .card-img-top:hover
        {
            opacity: 0.7;
        }
        
        
        .pagination
        {
            display: inline-block;
          margin-left: 40%;
        }
        
        .pagination a
        {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
        }
        
        .pagination a.active
        {
            background-color:  Orange;
            color: white;
        }
        
        .pagination a:hover:not(.active)
        {
            background-color: #ddd;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <hr />
    <div style="padding-top: 20px;">
    </div>
    <asp:DataList runat="server" ID="dl" RepeatColumns="5" RepeatDirection="Horizontal"
        class="dl_css">
        <ItemTemplate>
            <div class="card">
                <a style="width: 218px;" runat="server" id="lnk_href" href='<%# "CategoryContent.aspx?catid="+ Eval("categoryid") %>'>
                    <img src='<%#Eval("DisplayImage1") %>' class="card-img-top" alt="..." height="190px"
                        width="50px ">
                    <div style="background-color: #000000; height: 40px; text-align: center; color: White;
                        padding-top: 10px;">
                        <asp:Label runat="server" ID="lbl_name" Text='<%#Eval("category_name") %>'></asp:Label>
                    </div>
                </a>

            </div>
               <br />
            <%-- <div class="flip-box">
                <div class="flip-box-inner">
                    <div class="flip-box-front">
                        <div class="card">
                            <a style="width: 218px;" runat="server" id="lnk_href" href='<%# "CategoryContent.aspx?catid="+ Eval("categoryid") %>'>
                                <img src='<%#Eval("DisplayImage1") %>' class="card-img-top" alt="..." height="190px"
                                    width="50px ">
                            </a>
                        </div>
                    </div>
                </div>
            </div>--%>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <div class="pagination">
        <a href="#">&laquo;</a> <a href="#">1</a> <a href="#" class="active">2</a> <a href="#">
            3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">&raquo;</a>
    </div>
</asp:Content>
