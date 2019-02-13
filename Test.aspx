<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

        <!--SQL-->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" 
        SelectCommand="SELECT [Email], [Password], [FName], [LName] FROM [User] WHERE ([Email] = @Email) AND ([Password]=@Password)">

            <SelectParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" />
            </SelectParameters>

        </asp:SqlDataSource>

        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Btn8_Click" style="width: 91px;"/>

        <p><asp:Label ID="Label_1" runat="server" style="color: blue;"></asp:Label></p><br>

    </div>

</asp:Content>

