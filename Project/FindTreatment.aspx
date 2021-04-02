<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FindTreatment.aspx.cs" Inherits="FindTreatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        
    <asp:Panel ID="Panelintro" runat="server" Visible="true" >
        <div class="row" style="padding:34px">
            <div class="col-md-8 " style="margin-top: 91px">

                <p class="text-left" style="font-size: x-large; margin-left: 16px; font-family: initial;">
                    Hello!
                </p>
                <p style="font-family: inherit;">
                    You’re about to use a health checkup. Your answers will be carefully analyzed and you’ll learn about possible causes of your symptoms
                </p>
            </div>
            <div class="col-md-2 text-right">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/treatment.PNG" />
            </div>
        </div>
        <div>
            <asp:Button ID="btninro" runat="server" CssClass="btn btn-success" OnClick="btninro_Click" Text="NEXT" />
            <br />
            <br />
        </div>
    </asp:Panel>

    <asp:Panel ID="Panelsymp1" runat="server" Visible="false" >
        <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="SYMPTOMS"></asp:Label>
                <br />
                <hr />
            </div>
            </div>
        <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label1" runat="server"  Text="Headache"></asp:Label>:-
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbheadache" CssClass="custom-radio" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> HIGH </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MODERATE </asp:ListItem>
                     <asp:ListItem Value="1"> NORMAL </asp:ListItem>
                </asp:RadioButtonList>
                </div>
                  <div class="col-md-3"  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="Rbheadache"  ErrorMessage="*Select Headache"></asp:RequiredFieldValidator>
                </div>
              
            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label2" runat="server" Text=" Fatique"></asp:Label>:-
            </div>
           
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbfatique" runat="server" RepeatDirection="Horizontal" >
                   <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                     
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 "  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"  ControlToValidate="Rbfatique"  ErrorMessage="*Select Fatique"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label3" runat="server" Text="Nausea"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbnausea" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 "  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"  ControlToValidate="Rbnausea"  ErrorMessage="*Select Nausea"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label4" runat="server" Text="Vomiting"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbvomiting" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"  ControlToValidate="Rbvomiting"  ErrorMessage="*Select Vomiting"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label5" runat="server" Text="Chills"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbchills" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"  ControlToValidate="Rbchills"  ErrorMessage="*Select Chills"></asp:RequiredFieldValidator>
                </div>

        </div>
       
        <br />
         <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Button ID="btnsymp1" runat="server" CssClass="btn btn-success"  OnClick="btnsymp1_Click" Text="NEXT" />
                <br />
                <hr />
            </div>
            </div>
    </asp:Panel>


            <asp:Panel ID="Panelsymp2" runat="server" Visible="false" >
        <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="SYMPTOMS 1"></asp:Label>
                <br />
                <hr />
            </div>
            </div>
        <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label10" runat="server"  Text="Cough"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbcough" CssClass="custom-radio" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red"  ControlToValidate="Rbcough"  ErrorMessage="*Select Cough"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label11" runat="server" Text="Sore Throat"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbsorethroat" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red"  ControlToValidate="Rbsorethroat"  ErrorMessage="*Select Sore Throat"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label12" runat="server" Text="Stiffy Nose"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstiffynose" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red"  ControlToValidate="Rbstiffynose"  ErrorMessage="*Select Stiffy Nose"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label13" runat="server" Text="Redness"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbredness" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>

             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="Red"  ControlToValidate="Rbredness"  ErrorMessage="*Select Redness"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label14" runat="server" Text="Irritation"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbirritation" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ForeColor="Red"  ControlToValidate="Rbirritation"  ErrorMessage="*Select Irritation"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label15" runat="server" Text="Itching"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbitching" runat="server" RepeatDirection="Horizontal" >
                   <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ForeColor="Red"  ControlToValidate="Rbitching"  ErrorMessage="*Select Itching">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
       
        <br />
         <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Button ID="btnsymp2" runat="server" OnClick="btnsymp2_Click" CssClass="btn btn-success" Text="NEXT" />
                <br />
                <hr />
            </div>
            </div>
    </asp:Panel>


             
            <asp:Panel ID="Panelsymp3" runat="server" Visible="false"  >
        <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Label ID="Label17" runat="server" Font-Size="X-Large" Text="SYMPTOMS 2"></asp:Label>
                <br />
                <hr />
            </div>
            </div>
        <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label18" runat="server"  Text="Rash"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbrash" CssClass="custom-radio" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ForeColor="Red"  ControlToValidate="Rbrash"  ErrorMessage="*Select Rash">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
       
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label20" runat="server" Text="Stomach Cramps"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstomachcramps" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ForeColor="Red"  ControlToValidate="Rbstomachcramps"  ErrorMessage="*Select Stomach Cramps">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
        <br />
                <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label21" runat="server" Text="Stomach Pain"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstomachpain" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
                    <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ForeColor="Red"  ControlToValidate="Rbstomachpain"  ErrorMessage="*Select Stomach Pain">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
        <br />
                <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label22" runat="server" Text="Strainig To Pass Stools"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstrainigstools" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ForeColor="Red"  ControlToValidate="Rbstrainigstools"  ErrorMessage="*Select Strainig To Pass Stools">
                  </asp:RequiredFieldValidator>
            </div>

        </div>
        <br />
                <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label23" runat="server" Text="Dehydration"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbdehydration" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
                    <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ForeColor="Red"  ControlToValidate="Rbdehydration"  ErrorMessage="*Select Dehydration">
                  </asp:RequiredFieldValidator>
            </div>

        </div>
       
        <br />
         <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Button ID="btnanalyse" runat="server" CssClass="btn btn-success" OnClick="btnanalyse_Click" Text="Analyze" />
                <br />
                <hr />
            </div>
            </div>
    </asp:Panel>





            <asp:Panel ID="Panel2" runat="server" Visible="false"  >
        <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Label ID="Label26" runat="server" Font-Size="X-Large" Text="Personal Information"></asp:Label>
                <br />
                <hr />
            </div>
            </div>
        <div class="row">
            <div class="col-md-6 text-right"> 
             
                <asp:Label ID="Label27" runat="server"  Text="AGE"></asp:Label>
            </div>
            <div class="col-md-2 text-left"  >
                <asp:Label ID="lblage" CssClass="form-control" runat="server" Text="Label"></asp:Label>
                
            </div>
              </div>
       
        <br /><div class="row">
            <div class="col-md-6 text-right"> 
                <asp:Label ID="Label28" runat="server" Text="BMI"></asp:Label>
            </div>
            <div class="col-md-2 text-left"  >
                <asp:Label ID="lblbmi" CssClass="form-control" runat="server" Text="Label"></asp:Label>
            </div>     
        </div>
        <br />
              
                 <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Button ID="btndata" runat="server" CssClass="btn btn-success" OnClick="btndata_Click" Text="Analyze" />
                <br />
                <hr />
            </div>
            </div>
                
    </asp:Panel>











             <asp:Panel ID="Panel1" runat="server" Visible="false" >
    <asp:Label ID="Label19" runat="server" Text="Results :" style="font-size: x-large"></asp:Label>
    <asp:Label ID="lblresult" runat="server" Text="" style="font-size: x-large"></asp:Label>
                 <br />
                 <br />
                 
   <asp:Button ID="btntreatment" runat="server" Text="GET TREATMENT" CssClass="btn btn-info" OnClick="btntreatment_Click" />
                 <br />
                 <br />
        </asp:Panel>




            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

