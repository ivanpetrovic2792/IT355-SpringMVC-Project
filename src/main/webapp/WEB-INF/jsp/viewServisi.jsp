<%-- 
    Document   : viewServisi
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<%@include file="header.jsp" %>
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/viewTelefoni.css" />"
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Lista zavedenih zakazanih servisa</h3>
<c:if test="${!empty servisi}">

    <table class="table table-striped">
        <thead>
            <tr>
                <th>Marka telefona</th>
                <th>Naziv telefona</th>
                <th>Kratki opis problema</th>
                <th>Brisanje</th>
            </tr>
        </thead>
        <tbody> 
            <c:forEach items="${servisi}" var="servis">
                <tr>
                    <td>${servis.telefonID.markaTelefona.markaNaziv}</td>
                    <td>${servis.telefonID.telefonNaziv}</td>
                    <td>${servis.problem}</td>
                    <td><a href="<c:url value='/deleteServis/${servis.servisID}' />">Izbrisi</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>
<%@include file="footer.jsp" %>
