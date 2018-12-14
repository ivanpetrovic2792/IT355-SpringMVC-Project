<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Dodavanje marke telefona</h3>
<br/><br/>
<div class="container">
    <div class="col-md-6 col-md-offset-3">
        <c:url var="addMarkaTelefona" value="/addMarkaTelefona" ></c:url>
        <c:url var="post_url"  value="/addMarkaTelefona/" />
        <form:form method="POST" modelAttribute="markaTelefona" action="${post_url}">
            <% String success = (String) request.getAttribute("successMsg");%>
            <%= (success != null) ? "<div class=\"alert alert-success\">" + success + "</div>" : ""%>
            <div class="form-group">
                <%--<form:input type="markaID" class="form-control" id="markaID" path="markaID" readonly="true" disabled="true" />--%>
                <form:hidden path="markaID" />
            </div>
            <div class="form-group">
                <form:label path="markaNaziv" cssStyle="color: #dc2c29">Naziv marke telefona</form:label>
                <form:input type="markaNaziv" class="form-control" id="markaNaziv" placeholder="markaNaziv" path="markaNaziv" />
            </div>
            <button type="submit" class="btn btn-primary" style="background-color: #dc2c29; border-color: #dc5d19">Dodaj marku telefona</button>
        </form:form>
    </div>
</div>