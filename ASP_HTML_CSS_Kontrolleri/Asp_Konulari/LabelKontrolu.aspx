<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabelKontrolu.aspx.cs" Inherits="ASP_HTML_CSS_Kontrolleri.Asp_Konulari.LabelKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>En Yaramaz Kim?</label>
            <br /><br />
            <asp:Button ID="btn_getir" runat="server" Text="Kurra Çek" OnClick="btn_getir_Click"/>
            <br /><br />
            <asp:Label ID="lbl_sonuc" runat="server" Text="En yaramaz = "></asp:Label>
        </div>
    </form>
</body>
</html>
