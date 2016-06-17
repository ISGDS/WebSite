<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GlavnaStranica.aspx.cs" Inherits="GlavnaStranica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="min-width: 100%;min-height: 100%;">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Glavna Stranica</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:600px;
     height:420px;
      margin: auto;
  }
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
  height: 60px;
  background-color: #f5f5f5;
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
        <li class="active"><a href="GlavnaStranica.aspx"><span class="glyphicon glyphicon-home"></span>Home<span class="sr-only">(current)</span></a></li>
        <li><a href="Pregled.aspx"><span class="glyphicon glyphicon-signal"></span>Reveiw</a></li>
        <li><a href="Kontakt.aspx"><span class="glyphicon glyphicon-envelope"></span>Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-check"></span>Register<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Najava.aspx">Register</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Login.aspx">Login</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <div class="container">
  <br>
        <p style="text-decoration:underline"><asp:Label ID="Najaven" runat="server" Text="Not logged"></asp:Label></p>
        <hr/>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
        <li data-target="#myCarousel" data-slide-to="7"></li>
        <li data-target="#myCarousel" data-slide-to=8"></li>
    </ol>
      <div>
    
    
    </div>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Sliki/1.jpg" alt="Razer Mousepad" width="800" height="420">
      </div>

      <div class="item">
        <img src="Sliki/2.png" alt="SteelSeries keyboard" width="800" height="420">
      </div>
    
      <div class="item">
        <img src="Sliki/3.png" alt="SteelSeries Mousepad" width="800" height="420">
      </div>

      <div class="item">
        <img src="Sliki/4.png" alt="Razer Blackwidow" width="800" height="420">
      </div>

      <div class="item">
        <img src="Sliki/5.png" alt="Razer Deathadder" width="800" height="420">
      </div>

      <div class="item">
        <img src="Sliki/6.jpg" alt="SteelSeries Rival" width="800" height="420">
      </div>
        <div class="item">
        <img src="Sliki/7.png" alt="SteelSeries Siberia" width="800" height="420">
      </div>
        <div class="item">
        <img src="Sliki/8.png" alt="SteelSeries Sensei" width="800" height="420">
      </div>
        <div class="item">
        <img src="Sliki/9.png" alt="Razer Kraken" width="800" height="420">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
        
</div>
    
    <hr width="80%" />
	<footer>
            <div class="row">
                <div class="col-lg-offset-2 col-lg-4">
                    <p>Copyright &copy; FINKI 2016</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Made by Zoran Josifoski 116011.</p>
                </div>
            </div>
        </footer>
    
        </form>
</body>
</html>
