<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CReg.aspx.cs" Inherits="CReg" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
        <div class="col-md-12">
            <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 text-center">
                    <asp:Label ID="Label1" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Registration "></asp:Label>
                    <hr />
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label2" runat="server" Text="User ID  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox2" required="" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox3" required="" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label5" runat="server" Text="Mobile No  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox4" required="" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Mobile No"
                        ForeColor="Red" ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label13" runat="server"  Text="Email id  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox5" required="" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ControlToValidate="TextBox5" ErrorMessage="Invalid Email ID" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label9" runat="server" Text="Sex  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label10" runat="server" Text="Age  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox8" required="" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

             <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label6" runat="server" Text="Height (in Centimeter)  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="txtheight" CssClass="form-control" required="" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

             <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label11" runat="server" Text="Weight (in Kgs)  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="txtweight" CssClass="form-control" required="" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label7" runat="server" Text="Password  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox6" required="" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Label ID="Label8" runat="server" Text="Confirm Password  :-"></asp:Label>
                </div>
                <div class="col-md-3 text-left">
                    <asp:TextBox ID="TextBox7" required="" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6 text-right">
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="Submit" />
                </div>
                <div class="col-md-3 text-left">
                    <asp:LinkButton ID="LinkButton1" CssClass="btn btn-danger" OnClick="Button3_Click"  runat="server">Cancel</asp:LinkButton>
                   
                </div>
            </div>
            <br />
            <br />

        </div>
    </div>
</asp:Content>
