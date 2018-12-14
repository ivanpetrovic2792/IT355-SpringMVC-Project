<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"   prefix="sec" %>
<%
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/") + 1);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css"/>
        <link rel="stylesheet" href="<c:url value="/resources/css/header.css" />"

        <script>
            $(document).ready(function () {
                $("table").DataTable();
            });
        </script>
        <title>BgMobServis</title>
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-default navbar-custom navbar-fixed-top" style="background-color: #dc2c29">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/IT355-Projekat/">BgMobServis</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <c:url var="home"  value="/" />
                            <c:url var="galerija"  value="/galerija" />
                            <c:url var="kontakt"  value="/kontakt" />
                            <c:url var="onama"  value="/onama" />
                            <c:url var="zakazivanjeservisa"  value="/zakazivanjeServisa" />
                            <c:url var="addtelefon"  value="/addTelefon/" />
                            <c:url var="addmarkatelefona"  value="/addMarkaTelefona" />
                            <c:url var="addservis"  value="/addServis/" />
                            <c:url var="viewtelefoni"  value="/viewTelefoni" />
                            <c:url var="viewmarketelefona"  value="/viewMarkeTelefona" />
                            <c:url var="viewservisi"  value="/viewServisi" />
                          
                            <li class="<%=  (pageName.equals("home.jsp")) ? "active" : ""%>"><a href="${home}">Pocetna</a></li>
                            <li class="<%=  (pageName.equals("galerija.jsp")) ? "active" : ""%>"><a href="${galerija}">Galerija</a></li>
                            <li class="<%=  (pageName.equals("kontakt.jsp")) ? "active" : ""%>"><a href="${kontakt}">Kontakt</a></li>
                            <li class="<%=  (pageName.equals("onama.jsp")) ? "active" : ""%>"><a href="${onama}">O nama</a></li>
                            <sec:authorize access="hasRole('ROLE_USER')">  
                            <c:if test="${pageContext.request.userPrincipal.name != null}">    
                            <li class="<%=  (pageName.equals("zakazivanjeServisa.jsp")) ? "active" : ""%>"><a href="${zakazivanjeservisa}">Zakazivanje servisa telefona</a></li>
                               </c:if>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                               <c:if test="${pageContext.request.userPrincipal.name != null}"> 
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pregled telefona<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li class="<%= (pageName.equals("addTelefon.jsp")) ? "active" : ""%>"><a href="${addtelefon}">Dodaj telefon</a></li>
                                    <li class="<%=   (pageName.equals("viewTelefoni.jsp")) ? "active" : ""%>"><a href="${viewtelefoni}">Lista telefona</a></li>
                                </ul>
                            </li>
                                </c:if>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pregled marki telefona<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li class="<%=  (pageName.equals("addMarkaTelefona.jsp")) ? "active" : ""%>"><a href="${addmarkatelefona}">Dodaj marku telefona</a></li>
                                    <li class="<%=   (pageName.equals("viewMarkeTelefona.jsp")) ? "active" : ""%>"><a href="${viewmarketelefona}">Lista marki telefona</a></li>
                                </ul>
                            </li>
                                </c:if>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pregled servisa<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li class="<%=   (pageName.equals("addServis.jsp")) ? "active" : ""%>"><a href="${addservis}">Dodaj servis</a></li>
                                    <li class="<%=   (pageName.equals("viewservisi.jsp")) ? "active" : ""%>"><a href="${viewservisi}">Lista servisa</a></li>
                                </ul>
                            </li>
                                </c:if>
                            </sec:authorize>
                            
                         
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right">
                            <c:url var="login"  value="/login" />
                            <c:url var="registration"  value="/registration" />
                            <c:url var="logoutUrl"  value="/j_spring_security_logout" />
                            <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li class="<%=   (pageName.equals("login.jsp")) ? "active" : ""%>"><a href="${login}">Prijavljivanje</a></li>
                            <li class="<%=   (pageName.equals("registration.jsp")) ? "active" : ""%>"><a href="${registration}">Registracija</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li class="<%=   (pageName.equals("login.jsp")) ? "active" : ""%>"><a href="${logoutUrl}">Odjavi se</a></li>
                            </c:if>
                       </ul>
                    </div>
                </div>
            </nav>