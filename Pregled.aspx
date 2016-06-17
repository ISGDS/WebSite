<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pregled.aspx.cs" Inherits="Pregled" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" style="min-width: 100%;min-height: 100%;>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title>Pregled</title>
    <style>
        .footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 0%;
  background-color: #f5f5f5;
}
.row{
    margin-bottom:10px;
    margin-top:10px;
}
body {
    font-size:16px;
    background: url("Sliki/pozadina.jpg") left top repeat;
    
}
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="GlavnaStranica.aspx"><img src="Sliki/logo.png" height="32px" width="38px"/></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li ><a href="GlavnaStranica.aspx"><span class="glyphicon glyphicon-home"></span>Glavna strana</a></li>
        <li><a href="Pregled.aspx" class="active"><span class="glyphicon glyphicon-signal"></span>Pregled <span class="sr-only">(current)</span></a></li>
        <li><a href="Kontakt.aspx"><span class="glyphicon glyphicon-envelope"></span>Kontakt</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-check"></span>Najavi se<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li ><a href="Najava.aspx">Najava</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Login.aspx">Logiranje</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <div class="container">
    
        <p style="text-decoration:underline"><asp:Label ID="Najaven" runat="server" Text="Ne ste logirani"></asp:Label></p>
        <hr />
        <div class="row">
            <div class="col-lg-offset-1 col-lg-2">
            <p>Sostojba na prodazbata:</p>
            </div>
            <div class="col-lg-offset-6 col-lg-2">
            <p>Sostojba na vrabotenite:</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
        <asp:GridView ID="gridCategories" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            </div>
       <div class="col-lg-6">
        <asp:GridView ID="gridCategories1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
       </div>
        </div>
    
    </div>
        <hr width="80%" />
	<footer>
            <div class="row">
                <div class="col-lg-offset-2 col-lg-4">
                    <p>Copyright &copy; FINKI 2016</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Napravena od Zoran Josifoski 116011.</p>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
