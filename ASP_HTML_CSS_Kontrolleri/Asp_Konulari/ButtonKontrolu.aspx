<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonKontrolu.aspx.cs" Inherits="ASP_HTML_CSS_Kontrolleri.Asp_Konulari.ButtonKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .kutu{
            width:250px;
            padding:10px;
            border:1px solid silver;
            border-radius:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Butona basılınca sayfa postBack işlemini gerçekleştirir --%>
            <asp:Button ID="btn_gonder" runat="server" Text="Gönder" OnClick="btn_gonder_Click" />
            <div class="kutu">
                sayı 1:
                <asp:TextBox ID="tb_sayi1" runat="server"></asp:TextBox>
                <br /><br />
                sayı 2:
                <asp:TextBox ID="tb_sayi2" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="btn_topla" runat="server" Text="Topla" OnClick="btn_topla_Click" />
                <br /><br />
                Sonuç :
                <asp:TextBox ID="tb_sonuc" runat="server"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
