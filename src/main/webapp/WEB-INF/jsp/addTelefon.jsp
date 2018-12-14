<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Dodavanje telefona</h3>
<br/><br/>
<c:url var="addTelefon" value="/addTelefon" ></c:url>
    <div class="container">
        <div class="col-md-6 col-md-offset-3">

        <c:url var="post_url"  value="/addTelefon/" />
        <form:form method="POST" action="${post_url}" modelAttribute="telefon">
            <% String success = (String) request.getAttribute("successMsg"); %>
            <%= (success != null) ? "<div class=\"alert alert-success\">"+success+"</div>" : "" %>
            <div class="form-group">
                <form:label for="markaTelefona" path="markaTelefona" cssStyle="color: #dc2c29">Marke telefona</form:label>
                <form:select id="slcRole" class="form-control" path="markaTelefona">
                    <form:option value="">SELECT</form:option>
                    <form:options items="${markeTelefona}" itemValue="markaID" itemLabel="markaNaziv" />
                </form:select>
            </div>
            <div class="form-group">
                <%--<form:input type="markaID" class="form-control" id="markaID" path="markaID" readonly="true" disabled="true" />--%>
                <form:hidden path="telefonID" />
            </div>
            <div class="form-group">
            <form:label path="telefonNaziv" cssStyle="color: #dc2c29">Naziv telefona</form:label>
                <form:input type="telefonNaziv" id="telefonNaziv" class="form-control" placeholder="telefonNaziv" path="telefonNaziv" />
            </div>
            <div class="form-group">
                <form:label path="telefonMemorija" cssStyle="color: #dc2c29">Kolicina memorije</form:label>
                <form:input type="telefonMemorija" id="telefonMemorija" class="form-control" placeholder="telefonMemorija" path="telefonMemorija" />
            </div>
            <div class="form-group">
                <form:label path="telefonOpis" cssStyle="color: #dc2c29">Opis</form:label>
                <form:input type="telefonOpis" id="telefonOpis" class="form-control" placeholder="telefonOpis" path="telefonOpis" />
            </div>
            <div class="form-group">
                <form:label path="telefonProcesor" cssStyle="color: #dc2c29">Brzina procesora</form:label>
                <form:input type="telefonProcesor" id="telefonProcesor" class="form-control" placeholder="telefonProcesor" path="telefonProcesor" />
            </div>
            <div class="form-group">
                <form:label path="telefonKamera" cssStyle="color: #dc2c29">Kamera</form:label>
                <form:input type="telefonKamera" id="telefonKamera" class="form-control" placeholder="telefonKamera" path="telefonKamera" />
            </div>
            <div class="form-group">
                <form:label path="telefonVodootporan" cssStyle="color: #dc2c29">Telefon vodootporan</form:label>
                <form:input type="telefonVodootporan" id="telefonVodootporan" class="form-control" placeholder="telefonVodootporan" path="telefonVodootporan" />
            </div>
            <button type="submit" class="btn btn-primary" style="background-color: #dc2c29; border-color: #dc5d19">Dodaj telefon</button>
        </form:form>
    </div>
</div>

<%@include file="footer.jsp" %>