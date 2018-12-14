<%-- 
    Document   : zakazivanjeServisa
    Author     : Ivan
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<%@include file="header.jsp" %>
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<br/><br/><br/>
<h3 style="text-align: center; color: #dc2c29">Zakazivanje servisa telefona</h3>
<br/><br/>
<div class="container">
    <div class="col-md-6 col-md-offset-3">
        <c:url var="zakazivanjeServisa" value="/zakazivanjeServisa" ></c:url>
        <form:form method="POST" modelAttribute="zakazivanjeServisa">
            <% String success = (String) request.getAttribute("successMsg");%>
            <%= (success != null) ? "<div class=\"alert alert-success\">" + success + "</div>" : ""%>
            <div class="form-group">
                <form:label path="opisProblema" cssStyle="color: #dc2c29">Poruka: </form:label>
                <form:input type="opisProblema" class="form-control" id="poruka" placeholder="opisProblema" path="opisProblema" />
            </div>
            <button type="submit" class="btn btn-primary" style="background-color: #dc2c29; border-color: #dc5d19">Zakazi servis!</button>
        </form:form>
    </div>
</div>
 
<%@include file="footer.jsp" %>
