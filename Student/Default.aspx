﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td class="tblhead" bgcolor="White">
            Sala de Leitura — EE Presidente Café Filho</td>
        </tr>
        <tr>
            <td bgcolor="White">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" style="text-align: center">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/img/books.JPG" Height="487px" Width="410px" />
            </td>
        </tr>
    </table>
</asp:Content>
