<%@ Page Title="Assignments" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Assignments.aspx.cs" Inherits="Assignments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <!--Nav Spacer-->
        <div class="secES"></div>

        <!--PDF object-->
        <div class="pdf"><object data="Evaluation.pdf" type="application/pdf"></object></div>

        <!--Info-->
        <div class="subSecL">
            <h1>Website Evaluation</h1>
            <p>Link: &nbsp &nbsp<a href="Evaluation.pdf">Evaluation.pdf</a></p>
        </div>

        <div class="secS"></div>

</asp:Content>