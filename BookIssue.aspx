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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Empréstimo</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="style1">
                <tr>
                    <td class="lbl">
                        Editora :
                            <asp:DropDownList ID="drppublication" runat="server" CssClass="txt" 
                            AutoPostBack="True" 
                            onselectedindexchanged="drppublication_SelectedIndexChanged">
                                
                            </asp:DropDownList>
                    </td>
                    <td class="lbl">
                        Livro :
                    </td>
                    <td>
                        <asp:DropDownList ID="drpbook" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button12" runat="server" CssClass="btn" 
                            onclick="Button12_Click" Text="Buscar" Width="100px" />
                    </td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View2" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                Detalhe do Livro</td>
                        </tr>
                        <tr>
                            <td>
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
                                class="style13">
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
                            <td class="style15">
                                Buscar Nível/Área :
                                <asp:DropDownList ID="drpbranch" runat="server" AutoPostBack="True" 
                                    CssClass="txt" onselectedindexchanged="drpbranch_SelectedIndexChanged" 
                                    Width="120px">
                                </asp:DropDownList>
                                &nbsp;Usuário:
                                <asp:DropDownList ID="drpstudent" runat="server" CssClass="txt" Width="120px">
                                </asp:DropDownList>
                                &nbsp;Dias:<asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="50px"></asp:TextBox>
&nbsp;<asp:Button ID="btnissue" runat="server" CssClass="btn" onclick="btnissue_Click" Text="Emprestar" 
                                    Width="100px" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
</table>
</asp:Content>

