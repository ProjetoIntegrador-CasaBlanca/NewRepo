<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 391px;
            height: 415px;
        }
    .auto-style1 {
        width: 444px;
        height: 415px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Cadastro de Usuário</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td class="lbl">
                        Nome :</td>
                    <td>
                        <asp:TextBox ID="txtsname" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtsname" ErrorMessage="*" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Nível / Área : </td>
                    <td>
                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="drpbranch" ErrorMessage="*" ForeColor="Red" 
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Gênero&nbsp; : </td>
                    <td>
                        <asp:RadioButton ID="rdomale" runat="server"  Text="M" AutoPostBack="True" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdofemale" runat="server" Text="F" AutoPostBack="True" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Data Nasc. : </td>
                    <td>
                        <asp:DropDownList ID="drpdd" runat="server">
                            <asp:ListItem>DD</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                             <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                             <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="drpmm" runat="server">
                            <asp:ListItem>MM</asp:ListItem>
                            <asp:ListItem>jan</asp:ListItem>
                            <asp:ListItem>fev</asp:ListItem>
                            <asp:ListItem>mar</asp:ListItem>
                            <asp:ListItem>abr</asp:ListItem>
                            <asp:ListItem>mai</asp:ListItem>
                            <asp:ListItem>jun</asp:ListItem>
                            <asp:ListItem>jul</asp:ListItem>
                            <asp:ListItem>ago</asp:ListItem>
                            <asp:ListItem>set</asp:ListItem>
                            <asp:ListItem>out</asp:ListItem>
                            <asp:ListItem>nov</asp:ListItem>
                            <asp:ListItem>dez</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="drpyyyy" runat="server">
                            <asp:ListItem>YYYY</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                             <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                             <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                             <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                             <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                             <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Telefone : </td>
                    <td>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" MaxLength="11" OnTextChanged="txtmobile_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red" 
                            MaximumValue="99999999999" MinimumValue="1000000000" SetFocusOnError="True" 
                            Type="Double"></asp:RangeValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Endereço:</td>
                    <td>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Cidade : </td>
                    <td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        CEP : </td>
                    <td>
                        <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Foto : </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Email : </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red" 
                            SetFocusOnError="True" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Senha: </td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtpass" ErrorMessage="*" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnadd" runat="server" CssClass="btn" onclick="btnadd_Click" 
                            Text="Salvar" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

