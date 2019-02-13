<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!--Nav Spacer-->
    <div class="secES"></div>
    <div class="secES"></div>

    <!--Content-->
    <div class="subSecFitLog">

        <!--Register Form (Using Login CSS Class)-->
        <div class="login">

            <!--Extra div For Formatting-->
            <div>

                <h1>Register Form</h1>

                <!--New Name-->
                <asp:TextBox ID="FirstBox" placeholder="Enter First Name*" runat="server"/>  
                <asp:TextBox ID="LastBox" placeholder="Enter Last Name*" runat="server"/><br>
                
                <asp:Label ID="Name_Label" runat="server" style="color: red;"></asp:Label><br>
                
                <!--New Pass-->
                <asp:TextBox ID="CreatePassBox" placeholder="Enter Password*" runat="server" TextMode="Password"/>
                <asp:TextBox ID="ConfirmPassBox" placeholder="Confirm Password*" runat="server" TextMode="Password"/><br>
                <asp:Label ID="CreatePass_Label" runat="server" style="color: red;"></asp:Label><br>

                <!--Email (Used As Main User Name)-->
                <asp:TextBox ID="EmailBox" placeholder="email@example.com" runat="server" style="width: 440px;"/><br>
                <asp:Label ID="Email_Label" runat="server" style="color: red;"></asp:Label><br>

                <!--Date Of Birth-->
                <asp:TextBox ID="DOBBox" placeholder="Date of Birth" runat="server"/><br>
                <asp:Label ID="DOB_Label" runat="server" style="color: red;"></asp:Label><br>

                <!--Buttons-->
                <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Btn3_Click" style="width: 91px;"/>
                <asp:Button ID="Button4" runat="server" Text="Clear" OnClick="Btn4_Click" style="width: 91px;"/><br>
                <asp:Label ID="Complete_Label" runat="server" style="color: Blue; font-size: 20pt;"></asp:Label><br><br>

            </div>

        </div>

    </div>

    <!--SQL-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" InsertCommand="INSERT INTO [User] (Email, Password, FName, LName, YoB) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT Email, Password, FName, LName, YoB FROM [User]">
        <InsertParameters>
            <asp:Parameter Name="Email" Type ="string" />
            <asp:Parameter Name="Password" />
            <asp:Parameter Name="FName" />
            <asp:Parameter Name="LName" />
            <asp:Parameter Name="YOB" />
        </InsertParameters>
    </asp:SqlDataSource>

    <div class="secL"></div>

</asp:Content>