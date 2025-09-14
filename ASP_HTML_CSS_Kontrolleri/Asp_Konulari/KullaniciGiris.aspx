<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciGiris.aspx.cs" Inherits="ASP_HTML_CSS_Kontrolleri.Asp_Konulari.KullaniciGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *, h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Poppins;
            background-color: #efefef;
        }

        .tasiyici {
            width: 500px;
            padding: 15px;
            margin: 200px auto;
            border: 1px solid teal;
            border-radius: 15px;
            text-align: center;
            background-color: white;
            box-shadow: 15px 15px 5px -6px rgba(0,0,0,0.3);
            -webkit-box-shadow: 15px 15px 5px -6px rgba(0,0,0,0.3);
            -moz-box-shadow: 15px 15px 5px -6px rgba(0,0,0,0.3);
        }

        .sol {
            float: left;
            width: 200px;
        }

        .sag {
            float: left;
            width: 200px;
        }

        .satir {
            margin-bottom: 20px;
        }

        .metinkutu {
            width: 280px;
            padding: 10px;
            border-radius: 7px;
            border: 1px solid teal;
        }

        .girisButton {
            width: 100%;
            padding: 10px;
            color: white;
            background-color: teal;
            border-radius: 7px;
            border: 1px solid #026262;
        }

            .girisButton:hover {
                background-color: #026262;
            }
            .mesaj{
                color:orangered;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tasiyici">
            <div class="baslik">
                <div class="satir" style="border-bottom: 1px solid silver; padding-bottom: 20px;">
                    <h2>Kullanıcı Giriş</h2>
                    <p>Lütfen bilgileri doldurunuz</p>
                </div>
            </div>
            <div class="sol">
                <img src="images\lock.gif" style="width: 100%" />
            </div>
            <div class="sag">
                <div class="satir">
                    <asp:TextBox ID="tb_mail" runat="server" CssClass="metinkutu" placeholder="Kullanıcı Adı"></asp:TextBox>
                </div>
                <div class="satir">
                    <asp:TextBox ID="tb_sifre" runat="server" CssClass="metinkutu" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                </div>
                <div class="satir">
                    <asp:Button ID="btn_girisYap" runat="server" Text="Giriş Yap" CssClass="girisButton" OnClick="btn_girisYap_Click" />
                </div>
            </div>
            <div style="clear: both"></div>
            <div>
                <asp:Label ID="lbl_mesaj" runat="server" CssClass="mesaj"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
