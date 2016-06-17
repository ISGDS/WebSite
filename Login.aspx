<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="min-width: 100%;min-height: 100%;">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        li
  {
      padding-left:25px;
      padding-right:25px;
  
  }
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
        <li><a href="Pregled.aspx"><span class="glyphicon glyphicon-signal"></span>Pregled</a></li>
        <li><a href="Kontakt.aspx"><span class="glyphicon glyphicon-envelope"></span>Kontakt</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-check"></span>Najavi se<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li ><a href="Najava.aspx">Najava</a></li>
            <li role="separator" class="divider"></li>
            <li class="active"><a href="Login.aspx">Logiranje<span class="sr-only">(current)</span></a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
               <p style="text-decoration:underline"><asp:Label ID="Najaven" runat="server" Text="Ne ste logirani"></asp:Label></p>
                
                        
                </div>
                
            </div>
            <hr />
            <div class="row">
          <div class="col-lg-offset-3 col-lg-2">  
        <asp:Label ID="Label1" runat="server" Text="Korisnicko ime:"></asp:Label>
        </div>

            <div class="col-lg-2">
                <asp:TextBox ID="Ime" runat="server"></asp:TextBox>
              </div>
        <div class="col-lg-2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Ime" ErrorMessage="Vnesete korisnicko ime" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <img src="Sliki/Steel.png" width="200px" height="200px" />
                        </div>
            <div class="col-lg-2">
        <asp:Label ID="Label2" runat="server" Text="Lozinka:"></asp:Label>
    </div>
                    <div class="col-lg-2">
        <asp:TextBox ID="Lozinka" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnLogin_Click" runat="server" OnClick="btnLogin_Click_Click" Text="Logiraj se" />
                        </div>
                    <div class="col-lg-2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lozinka" ErrorMessage="Vnesete lozinka" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>
                    <div class="col-lg-3">
                        <img src="Sliki/Razer.png" width="200px" height="200px" />
                        </div>
        </div>
        <div class="row">
            <div class="col-lg-offset-5 col-lg-2">
        
                </div>
        </div>
                <div class="row">
                    <div class="col-lg-offset-5 col-lg-2">
        <asp:Button ID="Prodolzi" runat="server" OnClick="Prodolzi_Click" Text="Prodolzi" />
                    </div>
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
