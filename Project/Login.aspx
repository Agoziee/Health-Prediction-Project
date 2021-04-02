<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
       <table width="100%">
       <tr>
       <td width="33%"><center><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogin.aspx"><img src="images/admin%20btn.jpg" /></asp:HyperLink></center></td>
       <td width="33%"><center><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PatientLogin.aspx"><img src="images/patient%20btn.jpg" /></asp:HyperLink></center></td>
       <td><center><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DoctorLogin.aspx"><img src="images/Doctor%20btn.jpg" /></asp:HyperLink></center></td>
       </tr></table> 
        
        
        
        
      
    </div>
</asp:Content>