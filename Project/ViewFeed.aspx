<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewFeed.aspx.cs" Inherits="ViewFeed" %>


<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>

    <br />
    <br />
    <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="View Feedback"></asp:Label>
    <hr />
    
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#c0c0c0" runat="server" Width="80%">
        
    </asp:GridView>
    <br />

</div>
</asp:Content>
