<%-- 
    Document   : home
    Author     : Ivan
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>


<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<header class="business-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <img class="centerImage" style="margin-top: 50px; margin-bottom: -100px" src="<c:url value="/resources/images/slika1.jpg" />" alt="" />
                <h1 class="text-center text-white mt-4" style="color: #dc2c29; margin-top: 50px; font-size: 50px"><strong>BgMobServis</strong></h1>
            </div>
        </div>
    </div>
</header>


<div class="container">

    <div class="row">
        <div class="col-sm-8">
            <h2 class="mt-4" style="color: #dc2c29">Android 9.0 potvrdjen!</h2>
            <p style="color: #dc2c29">Novi Android ce se zvati Android Pie. Podrska vestackoj inteligenciji, jednostavnost i digitalna sveprisutnost su kljucne novosti nove verzije Androida.</p>
            <p style="color: #dc2c29"><u>Jednostavnost:</u> novi navigacioni sistem koji prikazuje trenutno otvorene aplikacije, slicno kao na iOS.</p>
            <p style="color: #dc2c29"><u>AI:</u> pametni telefon ce koristiti masinsko ucenje kako bi uvideo kada korisnik koristi odredjene aplikacije i prema tome ih ukljucivao samo kada su one potrebne korisniku i na taj nacin ustedece energiju i bateriju.</p>

        </div>
        <div class="col-sm-4">
            <h2 class="mt-4" style="color: #dc2c29">Kontakt info</h2>
            <address style="color: #dc2c29">
                <strong>BgMobServis</strong>
                <br>Blagoja Parovica 123
                <br>Beograd
                <br>Cukarica
                <br>
            </address>
            <address style="color: #dc2c29">
                <abbr title="Telefon">Tel:</abbr>
                (011) 225-883
                <br>
                <abbr title="Email">Email:</abbr>
                <a href="mailto:#">ivan@bgmob.com</a>
            </address>
        </div>
    </div>
    

    <div class="row" style="color: #dc2c29">
        <div class="col-sm-4 my-4" >
            <div class="card">
                <img class="card-img-top" src="<c:url value="/resources/images/slika2.jpg"/>" alt="TestDisplay"/>
                <div class="card-body">
                    <h4 class="card-title">Galerija</h4>
                    <p class="card-text">Slike sa servisiranja mobilnih telefona!</p>
                </div>
                <div class="card-footer">
                    <c:url var="galerija"  value="/galerija" />
                    <a class="btn btn-primary" href="${galerija}" style="background-color: #dc2c29; border-color: #dc5d19">Idi u galeriju</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4 my-4">
            <div class="card">
                <img class="card-img-top" src="<c:url value="/resources/images/slika3.png" />" alt="TestDisplay"/>
                <div class="card-body">
                    <h4 class="card-title">Kontakt</h4>
                    <p class="card-text">Postavite pitanje koje vas interesuje, a mi cemo u najskorijem roku odgovoriti na njega!</p>
                </div>
                <div class="card-footer">
                    <c:url var="kontakt"  value="/kontakt" />
                    <a class="btn btn-primary" href="${kontakt}" style="background-color: #dc2c29; border-color: #dc5d19">Kontaktirajte nas</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4 my-4">
            <div class="card">
                <img class="card-img-top" src="<c:url value="/resources/images/slika4.jpg" />" alt="TestDisplay"/>
                <div class="card-body">
                    <h4 class="card-title">O nama</h4>
                    <p class="card-text">Ukoliko zelite da saznate vise informacija o nasoj firmi, idite na link ispod i upoznajte se o nasem nacinu poslovanja.</p>
                </div>
                <div class="card-footer">
                    <c:url var="onama"  value="/onama" />
                    <a class="btn btn-primary" href="${onama}" style="background-color: #dc2c29; border-color: #dc5d19">Saznajte vise</a>
                </div>
            </div>
        </div>

    </div>

<%@include file="footer.jsp" %>
