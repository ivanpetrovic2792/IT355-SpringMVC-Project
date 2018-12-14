<%-- 
    Document   : registration
    Created on : Dec 1, 2017, 6:22:42 PM
    Author     : Ivan
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<%@include file="header.jsp" %>
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Registracija</h3>
<br/><br/>
<c:url var="registration" value="/registration/" ></c:url>
    <div class="container">
        <div class="col-md-6 col-md-offset-3">

        <c:url var="post_url"  value="/registration/" />
        <form:form method="POST" action="${post_url}" modelAttribute="korisnik">
            <% String success = (String) request.getAttribute("successMsg"); %>
            <%= (success != null) ? "<div class=\"alert alert-success\">"+success+"</div>" : "" %>
            <div class="form-group">
                <form:label path="korisnikEmail" cssStyle="color: #dc2c29">E-Mail</form:label>
                <form:input type="korisnikEmail" id="korisnikEmail" class="form-control" placeholder="Vas E-Mail" path="korisnikEmail" />
            </div>
            <div class="form-group">
                <form:label path="korisnikIme" cssStyle="color: #dc2c29">Ime</form:label>
                <form:input type="korisnikIme" id="korisnikIme" class="form-control" placeholder="Vase Ime" path="korisnikIme" />
            </div>
            <div class="form-group">
                <form:label path="korisnikPrezime" cssStyle="color: #dc2c29">Prezime</form:label>
                <form:input type="korisnikPrezime" id="korisnikPrezime" class="form-control" placeholder="Vase Prezime" path="korisnikPrezime" />
            </div>
            <div class="form-group">
                <form:label path="korisnikPassword" cssStyle="color: #dc2c29">Lozinka</form:label>
                <form:input type="password" id="korisnikPassword" class="form-control" placeholder="Vasa lozinka" path="korisnikPassword" />
            </div>

          <button type="submit" class="btn btn-primary" style="background-color: #dc2c29; border-color: #dc5d19">Registruj se</button>
        </form:form>
    </div>
</div>
        
<%@include file="footer.jsp" %>