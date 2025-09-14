<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextboxKontrolu.aspx.cs" Inherits="ASP_HTML_CSS_Kontrolleri.Asp_Konulari.TextboxKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        input {
            padding: 15px;
            width: 360px;
            border: 1px solid teal;
            border-radius: 7px;
            margin: 7px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" /><br />
            <asp:TextBox ID="tb_isim" runat="server"></asp:TextBox>
            <br />
            <br />
            <label>Sınırlı Karakter</label><br />
            <asp:TextBox ID="tb_sinirli" runat="server" MaxLength="5"></asp:TextBox>
            <br />
            <br />
            <label>Şifre</label><br />
            <asp:TextBox ID="tb_sifre" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <label>Gizli</label><br />
            <asp:TextBox ID="tb_gizli" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <label>Sadece Okunabilir</label><br />
            <asp:TextBox ID="tb_oku" runat="server" Enabled="false" Text="Murtaza Burada"></asp:TextBox>
            <br />
            <br />
            <label>Adres:</label><br />
            <asp:TextBox ID="tb_adres" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
    </form>
</body>
</html>
