<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchDoctor.aspx.cs" Inherits="SearchDoctor" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    

        <div class="col-md-12">
            <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 text-center">
                    <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Search Doctor "></asp:Label>
                    <hr />
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                     <asp:Label ID="Label2" runat="server" Text="Search By  :-"></asp:Label></div>
                <div class="col-md-3 text-left">
                   <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Type</asp:ListItem>
            <asp:ListItem>Address</asp:ListItem>
        </asp:DropDownList></div>
            </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right">  <asp:Label ID="Label3" runat="server" Text="Text  :-  "></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox></div>
           </div>

             <br />
            <div class="row">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" onclick="Button1_Click" Text="Submit" />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" onclick="Button2_Click" Text="Submit" 
            Visible="False" />
        <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" onclick="Button3_Click" Text="Submit" 
            Visible="False" />
                 
           </div>
                 <br />

        </div>

      
        
        <br />
        <br />
       
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" Height="201px">
                 <br />

            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover"
                HeaderStyle-BackColor="#c0c0c0" runat="server" Width="80%">
                
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>