<%-- 
    Document   : kontakt
    Author     : Ivan
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>

<link href="<c:url value="/resources/css/kontakt.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<br/><br/><br/><br/><br/>
<div class="container" style="text-align: center">
  <div class="col-md-5" style="ce">
    <div class="form-area">
      <form role="form">
        <br style="clear:both">
        <h3 style="margin-bottom: 25px; text-align: center; color: #dc2c29">Kontakt</h3>
        <div class="form-group">
          <input type="text" class="form-control" id="name" name="name" placeholder="Ime" required>
        </div>
        <div class="form-group">
          <input type="text" class="form-control" id="email" name="email" placeholder="Email adresa" required>
        </div>
        <div class="form-group">
          <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Broj telefona" required>
        </div>
        <div class="form-group">
          <input type="text" class="form-control" id="subject" name="subject" placeholder="Naslov" required>
        </div>
        <div class="form-group">
          <textarea class="form-control" type="textarea" id="message" placeholder="Poruka" ></textarea>

        </div>

        <button type="button" id="submit" name="submit" class="btn btn-primary pull-right" style="background-color: #dc2c29; border-color: #dc5d19">Posalji</button>
      </form>
    </div>
  </div>

  <div class="col-md-5">
    <div class="form-area">
      <form role="form">
        <br style="clear:both">
        <h3 style="margin-bottom: 25px; text-align: center; color: #dc2c29">Ostali podaci</h3>
        <p style="color: #dc2c29"><strong>PIB: </strong> 132547668</p>
        <p style="color: #dc2c29">Firma je u sistemu PDV-a, potvrda br: 157478952</p>
        <p style="color: #dc2c29"><strong>Maticni broj firme: </strong> 25276819</p>
        <p style="color: #dc2c29"><strong>Registarski broj: </strong> 357628952</p>
        <p style="color: #dc2c29"><strong>Registarski broj u APR: </strong> BD 457368952</p>
        <p style="color: #dc2c29"><strong>Sifra delatnosti: </strong> 95.12 Popravka komunikacione opreme</p>
        <p style="color: #dc2c29"><strong>Tekuci racun:</strong> 355-2785-91, Telenor Bank</p>
        <div style="clear:both;"></div>
      </form>
    </div>
  </div>

</div>
<%@include file="footer.jsp" %>
