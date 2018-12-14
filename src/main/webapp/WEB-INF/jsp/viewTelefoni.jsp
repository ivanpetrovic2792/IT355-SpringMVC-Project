<%-- 
    Document   : viewTelefoni
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="<c:url value="/resources/css/viewTelefoni.css" />"
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Pregled telefona</h3>
<br/><br/>
<c:if test="${!empty telefoni}">

    <table class="table table-striped">
        <thead>
            <tr>
                <th>Marka telefona</th>
                <th>Naziv telefona</th>
                <th>Opis telefona</th>
                <th>Memorija</th>
                <th>Brzina procesora</th>
                <th>Kamera</th>
                <th>Vodootporan</th>
                <th>Izmeni</th>
                <th>Brisanje</th>
            </tr>
        </thead>
        <tbody> 
            <c:forEach items="${telefoni}" var="telefon">
                <tr>
                    <td>${telefon.markaTelefona.markaNaziv}</td>
                    <td>${telefon.telefonNaziv}</td>
                    <td>${telefon.telefonOpis}</td>
                    <td>${telefon.telefonMemorija}</td>
                    <td>${telefon.telefonProcesor}</td>
                    <td>${telefon.telefonKamera}</td>
                    <td>${telefon.telefonVodootporan}</td>
                    <td><a href="<c:url value='/editTelefon/${telefon.telefonID}' />">Izmeni</a></td>
                    <td><a href="<c:url value='/deleteTelefon/${telefon.telefonID}' />">Izbrisi</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>
