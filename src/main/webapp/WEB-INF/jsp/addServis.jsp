<%-- 
    Document   : addServis
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>
<link href="<c:url value="/resources/css/viewTelefoni.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Lista zakazanih servisa</h3>
<br/><br/>
<c:if test="${!empty zakazaniServisi}">

    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID Zakazivanja</th>
                <th>E-Mail Korisnika</th>
                <th>Opis problema</th>
            </tr>
        </thead>
        <tbody> 
            <c:forEach items="${zakazaniServisi}" var="zakazaniServis">
                <tr>
                    <td>${zakazaniServis.zakazivanjeID}</td>
                    <td>${zakazaniServis.korisnikID.korisnikEmail}</td>
                    <td>${zakazaniServis.opisProblema}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>
<br/><br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Dodavanje servisa</h3>
<br/><br/>
<c:url var="addServis" value="/addServis" ></c:url>
    <div class="container">
        <div class="col-md-6 col-md-offset-3">

        <c:url var="post_url"  value="/addServis/" />
        <form:form method="POST" action="${post_url}" modelAttribute="servis">
            <% String success = (String) request.getAttribute("successMsg"); %>
            <%= (success != null) ? "<div class=\"alert alert-success\">"+success+"</div>" : "" %>
            <div class="form-group">
                <form:label for="telefonID" path="telefonID" cssStyle="color: #dc2c29">Telefon</form:label>
                <form:select id="slcRole" class="form-control" path="telefonID">
                    <form:option value="" >IZABERITE TELEFON</form:option>
                    <form:options items="${telefoni}" itemValue="telefonID" itemLabel="telefonNaziv" />
                </form:select>
            </div>
            <div class="form-group">
                <form:label path="problem" cssStyle="color: #dc2c29">Problem sa uredjajem</form:label>
                <form:input type="problem" id="problem" class="form-control" placeholder="problem" path="problem" />
            </div>
            <button type="submit" class="btn btn-primary" style="background-color: #dc2c29; border-color: #dc5d19">Dodaj servis</button>
        </form:form>
    </div>
</div>

<%@include file="footer.jsp" %>
