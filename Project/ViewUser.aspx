<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewUser.aspx.cs" Inherits="ViewUser" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
         <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Customer Details"></asp:Label>
        <hr />
        
        <br />
        <br />
        <div class="row">
            <div class="col-md-6 text-right">
                 <asp:Label ID="Label2" runat="server" Text="Cust ID  :-"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
       <br />
&nbsp;
        
&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" onclick="Button1_Click" Text="Search" />
        <br />
        <br />
       <%-- <div class="container">
            <div class="col-md-12 ">--%>
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#c0c0c0" HeaderStyle-HorizontalAlign="Center" Width="80%" runat="server">
        </asp:GridView>
               <%-- </div>
        </div>--%>
       
    
        <br />
        <asp:Panel ID="Panel4" runat="server" Wrap="False">
            <asp:Label ID="Labelhistory" CssClass="bg-info" Visible="false" runat="server" Font-Size="X-Large"
                        Text="Customer History"></asp:Label>
            
            <br />
            <br />
           
            <asp:Label ID="Labelrecord" ForeColor="IndianRed" runat="server" Visible="false" Font-Size="X-Large"
                        Text="No Record Found..."></asp:Label>
        <br />

            <asp:GridView ID="GridView2" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#c0c0c0" runat="server"  Width="80%">
            </asp:GridView>
                 
            <br />
            <br />
            
        </asp:Panel>

        <br />
        
     <br />
    </div>
</asp:Content>