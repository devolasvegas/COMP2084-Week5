﻿<%@ Page Title="Week 5 - Hello" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hello.aspx.cs" Inherits="Week5.hello" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Hello</h1>

    <div>
    <asp:label id="lblMessage" runat="server" cssClass="alert alert-info" Visible="false"></asp:label>
    </div>

    <asp:textbox id="txtName" runat="server" placeholder="Enter your name" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
    <asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />

</asp:Content>
