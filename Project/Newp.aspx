<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Newp.aspx.cs" Inherits="Newp" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" CssClass="bg-info" Text="New Search"></asp:Label>
        <hr />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#c0c0c0" runat="server" Width="80%">
        
    </asp:GridView>
    <br />
    <br />
    
</div>
</asp:Content>
