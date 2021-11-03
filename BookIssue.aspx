<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookIssue.aspx.cs" Inherits="BookIssue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 746px;
    }
        .style4
        {
            width: 717px;
            height: 276px;
        }
        .style5
        {
            font-weight: 700;
        }
        .style6
        {
            width: 216px;
        }
        .style8
        {
            height: 183px;
        }
        .style7
        {
            width: 452px;
        }
        .style9
        {
            height: 48px;
        }
        .style13
        {
            height: 27px;
            color: #000066;
            font-size: small;
        }
        .style14
        {
            text-align: right;
            color: black;
            width: 136px;
        }
        .style15
        {
            height: 49px;
        }
        .auto-style2 {
            text-align: right;
            color: black;
            height: 43px;
            width: 231px;
        }
        .auto-style3 {
            height: 43px;
        }
        .auto-style4 {
            text-align: right;
            color: black;
            height: 43px;
            width: 376px;
        }
        .auto-style5 {
            width: 376px;
        }
        .auto-style6 {
            width: 231px;
        }
        .auto-style7 {
        background: #ff6600;
        color: #fff;
        font-weight: bold;
        border: solid 2px black;
        cursor: pointer;
        transition: background-color 1s ease;
        background: #ff6600;
    }
    .auto-style8 {
        width: 98%;
        border: solid 1px #ddd;
        background: #FFF;
        height: 474px;
    }
    .auto-style9 {
        background: green;
        color: #fff;
        text-align: center;
        font-weight: bold;
        height: 30px;
        background: green;
        width: 710px;
    }
    .auto-style10 {
        width: 710px;
    }
    .auto-style11 {
        height: 27px;
        color: #000066;
        font-size: small;
        width: 710px;
    }
    .auto-style12 {
        height: 49px;
        width: 710px;
    }
    .auto-style13 {
        background: green;
        color: #fff;
        text-align: center;
        font-weight: bold;
        height: 30px;
        background: green;
        width: 818px;
    }
    .auto-style14 {
        width: 818px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Empréstimo</td>
    </tr>
    <tr>
        <td class="auto-style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
            <table class="style1">
                <tr>
                    <td class="auto-style4">
                        Editora:
                            <asp:DropDownList ID="drppublication" runat="server" CssClass="txt" 
                            AutoPostBack="True" 
                            onselectedindexchanged="drppublication_SelectedIndexChanged" Height="22px">
                                
                            </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <div>
                        Livro:
                        <asp:DropDownList ID="drpbook" runat="server" CssClass="txt" Height="22px">
                        </asp:DropDownList>
                    &nbsp;
                        </div>
                    </td>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button12" runat="server" CssClass="btn" 
                            onclick="Button12_Click" Text="Buscar" Width="65px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View2" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="auto-style9">
                                Detalhe do Livro</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <table class="style4">
                                    <tr>
                                        <td class="style5" colspan="2">
                                            Nome do Livro :
                                            <asp:Label ID="lblbname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6" rowspan="2">
                                            <asp:Image ID="Image2" runat="server" Height="228px" Width="207px" 
                                                BorderColor="#fff0" BorderStyle="Dotted" BorderWidth="1px" />
                                        </td>
                                        <td class="style8" valign="top">
                                            <table class="style7">
                                                <tr>
                                                    <td class="style14" style="font-size: medium">
                                                        Autor :</td>
                                                    <td>
                                                        <asp:Label ID="lblauthor" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style14" style="font-size: medium">
                                                        Editora :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpub" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style14" style="font-size: medium">
                                                        Nível/Área :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblbran" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style14" style="font-size: medium">
                                                        Valor :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style14" style="font-size: medium">
                                                        Quantidade :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblqnt" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style14" style="font-size: medium">
                                                        Quant. Disponível :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblaqnt" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style14" style="font-size: medium">
                                                        Quant. Empréstimo :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblrqnt" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9" valign="top">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Detalhes :
                                            <asp:Label ID="lbldetail" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top: 2px solid white; border-bottom: thin solid #FFF; font-weight: 700;" 
                                class="auto-style11">
                                Slecione o Usuário&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblissue" runat="server" ForeColor="Red"></asp:Label>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Days in Digit" ForeColor="Red" 
                                    MaximumValue="999999999" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                                &nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="1 to 10 allowed" ForeColor="Red" 
                                    MaximumValue="10" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                Buscar Nível/Área:
                                <asp:DropDownList ID="drpbranch" runat="server" AutoPostBack="True" 
                                    CssClass="txt" onselectedindexchanged="drpbranch_SelectedIndexChanged" 
                                    Width="120px">
                                </asp:DropDownList>
                                &nbsp;&nbsp; Usuário:
                                <asp:DropDownList ID="drpstudent" runat="server" CssClass="txt" Width="120px">
                                </asp:DropDownList>
                                &nbsp;&nbsp; Dias:<asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="50px"></asp:TextBox>
&nbsp;<asp:Button ID="btnissue" runat="server" CssClass="auto-style7" onclick="btnissue_Click" Text="Emprestar" 
                                    Width="87px" Height="30px" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
</table>
</asp:Content>

