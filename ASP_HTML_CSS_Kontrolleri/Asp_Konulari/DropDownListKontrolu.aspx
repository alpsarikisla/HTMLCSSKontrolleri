<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownListKontrolu.aspx.cs" Inherits="ASP_HTML_CSS_Kontrolleri.Asp_Konulari.DropDownListKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h3>Unbound DropdownList</h3>
                <p>Veriler Herhangi bir veri kaynağından gelmiyorsa unbound</p>
                <asp:DropDownList ID="ddl_dersler" runat="server">
                    <asp:ListItem Text="Web yazılım uzmanlığı" Value="1"></asp:ListItem>
                    <asp:ListItem Text="İleri Yazılım Uzmanlığı" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Front-End yazılım uzmanlığı" Value="3"></asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btn_sec" runat="server" Text="seç" OnClick="btn_sec_Click" />
                <br />
                <asp:Label ID="lbl_secilen" runat="server"></asp:Label>
            </div>
            <div>
                <h3>Seçilen eleman değiştiğinde</h3>
                <p>OnSelectedIndexChanged event'ı ile AutoPostBack="true" özelliği birlikte kullanılmalıdır</p>
                <label>Marka Seçiniz:</label>
                <asp:DropDownList ID="ddl_Markalar" runat="server" OnSelectedIndexChanged="ddl_Markalar_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Nike" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Tesla" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Adidas" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Lenovo" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Dell" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Mercedes" Value="6"></asp:ListItem>
                    <asp:ListItem Text="Casper" Value="7"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="lbl_secilenMarka" runat="server"></asp:Label>
            </div>
            <div>
                <h3>Eleman Ekleme</h3>
                <label>Eklenecek Veri : </label><br />
                <asp:TextBox ID="tb_eklenecek" runat="server"></asp:TextBox>
                <asp:Button ID="btn_ekle" runat="server" Text="Ekle" OnClick="btn_ekle_Click" />
                <br />
                <asp:DropDownList ID="ddl_eklenecek" runat="server" OnSelectedIndexChanged="ddl_eklenecek_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                <asp:Label ID="lbl_eklenecek" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
