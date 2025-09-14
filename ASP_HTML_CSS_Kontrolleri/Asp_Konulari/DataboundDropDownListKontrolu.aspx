<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataboundDropDownListKontrolu.aspx.cs" Inherits="ASP_HTML_CSS_Kontrolleri.Asp_Konulari.DataboundDropDownListKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Bound DropDownList Kontrolu</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label> Kategori Seçiniz: </label><br />
            <asp:DropDownList ID="ddl_kategoriler" runat="server" DataValueField="ID" DataTextField="Isim" AppendDataBoundItems="true">
                <asp:ListItem Value="0" Text="Seçiniz..."></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btn_sec" runat="server" Text="Seç" OnClick="btn_sec_Click" /><br />
            <asp:Label ID="lbl_secilen" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
