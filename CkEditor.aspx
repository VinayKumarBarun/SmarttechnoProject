<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSection/MasterPage.master"
    AutoEventWireup="true" CodeFile="CkEditor.aspx.cs" Inherits="CkEditor" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
    <div>
        <CKEditor:CKEditorControl ID="CKEditor1" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
    </div>
    <div>
        <asp:Button ID="btn_CkEditor" runat="server" Text="Button" OnClick="btn_CkEditor_Click" />
    </div>
    <div>
        <asp:Label runat="server" ID="lblText"></asp:Label>
    </div>
    <div>
        <asp:Label runat="server" ID="lbl2"></asp:Label>
    </div>
    </form>
</asp:Content>
