<%@ Page EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeBehind="AddPosts.aspx.cs" Inherits="MariSite.User.AddPosts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Post Title:
                </td>
                <td>
                    <asp:TextBox ID="txtPTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Post Data:
                </td>
                <td>
                    <asp:TextBox ID="txtPData" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Post Image:
                </td>
                <td>
                    <asp:FileUpload ID="fuPostImage" runat="server" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSavePost" runat="server" Text="Save Post" OnClick="btnSavePost_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
