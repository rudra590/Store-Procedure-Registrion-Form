<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRION FORM&nbsp;</td>
            </tr>
        </table>
&nbsp;<table align="center" class="auto-style1">
            <tr>
                <td>Name</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Pasword</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td style="margin-left: 40px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="a" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="FeMale" GroupName="a" />
                </td>
            </tr>
            <tr>
                <td>Img</td>
                <td style="margin-left: 40px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server" Height="193px" Width="193px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 40px">
                    <asp:Button ID="Button1" runat="server" Text="Registrion" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Edit" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
    </body>
</html>
