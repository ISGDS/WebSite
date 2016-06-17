<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kontakt.aspx.cs" Inherits="Kontakt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="min-width: 100%;min-height: 100%;>
<head runat="server">
    <title>Kontakt</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        .footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 60px;
  background-color: #f5f5f5;
    </style>
<script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        function initialize() {
            var mapCanvas = document.getElementById('map-canvas');
            var mapOptions = {
                center: new google.maps.LatLng(42.004113, 21.409549),
                zoom: 17,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(mapCanvas, mapOptions)
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
<style>
        #map-canvas {
           width: 100%;
           height: 420px;
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
        <li ><a href="Pregled.aspx"><span class="glyphicon glyphicon-signal">Pregled</a></li>
        <li class="active"><a href="Kontakt.aspx"><span class="glyphicon glyphicon-envelope">Kontakt<span class="sr-only">(current)</span></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-check"></span>Najavi se<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Najava.aspx">Najava</a></li>
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
        <section>
            <div class="col-lg-8">
                <div id="map-canvas"></div>
            </div>
            <div class="col-lg-4">
                <p>Faculty of Computer Science and Engineering</p>
<p>"Rugjer Boshkovikj" 16</p>
<p>1000 Skopje, Republic of Macedonia</p>
 <p>(389)123-4567</p>
            </div>
	
</section>
    </div>
        <hr width="80%" />
	<footer>
            <div class="row">
                <div class="col-lg-offset-2 col-lg-4">
                    <p>Copyright &copy; FINKI 2016</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Napravena od Zoran Josifoski - 116011 FINKI.</p>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
