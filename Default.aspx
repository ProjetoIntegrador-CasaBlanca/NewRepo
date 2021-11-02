<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
        .auto-style3 {
            width: 503px;
            height: 310px;
        }
        .auto-style18 {
            height: 268px;
            width: 481px;
        }
        .auto-style16 {
            height: 55px;
            width: 494px;
        }
        .auto-style6 {
            width: 56%;
            border: solid 1px #ddd;
            background: #FFF;
        }
        .auto-style8 {
            width: 258px;
        }
        .auto-style5 {
            height: 25px;
        }
        .auto-style9 {
            height: 25px;
            width: 258px;
        }
        .auto-style21 {
            width: 493px;
        }
        .auto-style22 {
            width: 88px;
            height: 82px;
        }
        .auto-style23 {
            height: 11px;
        }
        .auto-style24 {
            text-align: right;
            color: black;
            height: 27px;
        }
        .auto-style25 {
            width: 258px;
            height: 27px;
        }
    </style>
</head>
<body style="height: 625px; width: 1345px;">
    <form id="form1" runat="server">
    <div id="main">
        <table class="auto-style3" align="center">
            <tr>
                <td class="auto-style18">&nbsp;<br />
                    <div class="auto-style21">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img align="middle" alt="" class="auto-style22" src="img/Books-2-icon.png" /></div>
                    <br />
                    <div align="center" class="auto-style16" style="font-family: &quot;Edwardian Script ITC&quot;; font-size: 51px">
                        Sala de Leitura</div>
                    <div>
                        <table class="auto-style6" align="center">
                            <tr>
                                <td class="auto-style23" colspan="2" FontColor="White" bgcolor="Black" align="center" title="Login"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="auto-style8">
                                    <asp:Label ID="lbl" runat="server" Font-Size="11px" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">ID:</td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="175px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtuname" ErrorMessage="*" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24">Senha:
                </td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password" Width="175px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtupass" ErrorMessage="*" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" valign="middle"></td>
                                <td class="auto-style9" valign="middle">
                                    <asp:RadioButton ID="rdolibrary" runat="server" Checked="True" 
                        ForeColor="black" GroupName="a" Text="Admin" Visible="False" />
&nbsp;<asp:RadioButton ID="rdosudent" runat="server"  ForeColor="black" GroupName="a" 
                        Text="Usuário" Visible="False" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style23">&nbsp;&nbsp;&nbsp;
    
                                    </td>
                                <td class="auto-style23" align="justify">&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" 
                        Width="49px" Font-Size="10pt" onclick="Button1_Click" BackColor="Black" ForeColor="White" Height="28px" />
                &nbsp;</td>
                            </tr>
                        </table>
                    </div>
&nbsp;&nbsp;
                    <br /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
