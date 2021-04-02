<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GFeedback.aspx.cs" Inherits="GFeedback" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div>

    <br />
    <asp:Label ID="Label1"  CssClass="bg-info" runat="server" Font-Size="X-Large"  Text="Feedback"></asp:Label>
    <hr />
    
    
    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Height="100px" TextMode="MultiLine" 
        Width="440px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" onclick="Button1_Click" Text="Submit" />
    <br />

    <br />

</div>
</asp:Content>