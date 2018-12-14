<%-- 
    Document   : viewMarkeTelefona
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/viewTelefoni.css" />"
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Pregled marki telefona</h3>
<br/><br/>
<c:if test="${!empty markeTelefona}">

    <table class="table table-striped">
        <thead>
            <tr>
                <th>Naziv marke telefona</th>
                <th>Izmeni</th>
                <th>Brisanje</th>
            </tr>
        </thead>
        <tbody> 
            <c:forEach items="${markeTelefona}" var="markaTelefona">
                <tr>
                    <td>${markaTelefona.markaNaziv}</td>
                    <td><a href="<c:url value='/editMarkaTelefona/${markaTelefona.markaID}' />">Izmeni</a></td>
                    <td><a href="<c:url value='/deleteMarkaTelefona/${markaTelefona.markaID}' />">Izbrisi</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>
<%@include file="footer.jsp" %>