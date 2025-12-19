<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRION FORM</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" cellpadding="2" class="auto-style2">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp; </td>
            </tr>
            <tr>
                <td>Email</td>
                <td style="margin-left: 80px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Pasword</td>
                <td style="margin-left: 80px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td style="margin-left: 80px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="a" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="a" />
                </td>
            </tr>
            <tr>
                <td>IMG</td>
                <td style="margin-left: 80px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server" Height="158px" Width="164px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 80px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrion" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 80px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
