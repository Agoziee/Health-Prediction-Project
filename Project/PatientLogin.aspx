<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PatientLogin.aspx.cs" Inherits="PatientLogin" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
         <div class="col-md-12">
            <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 text-center">
                    <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Patient Login "></asp:Label>
                    <hr />
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label1" runat="server" Text="ID  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="id" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label2" runat="server" Text="Password :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="pass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Text="Login" OnClick="Button1_Click" />
                </div>
                <div class="col-md-3 text-left">
                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" OnClick="Button2_Click" Text="Cancel" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-12 text-center">
                    <asp:Label ID="Label3" runat="server" Text=" Not a member yet ?"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CReg.aspx">Register</asp:HyperLink>
                </div>
               
            </div>

            <br />
            <br />
        </div>
    </div>
</asp:Content>
