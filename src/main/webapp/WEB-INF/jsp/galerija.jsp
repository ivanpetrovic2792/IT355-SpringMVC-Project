<%-- 
    Document   : galerija
    Author     : Ivan
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@include file="header.jsp" %>

<link href="<c:url value="/resources/css/galerija.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<section>
  <div class="container gal-container">
    <h2 style="font-size: xx-large; text-align: center; color: #dc2c29">Galerija nasih radova</h2> <br/><br/>
    <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#1">
          
          <img src="<c:url value="/resources/images/1.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="1" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/1.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#2">
          <img src="<c:url value="/resources/images/2.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="2" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/2.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#3">
          <img src="<c:url value="/resources/images/3.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="3" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/3.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#4">
          <img src="<c:url value="/resources/images/4.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="4" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/4.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#5">
          <img src="<c:url value="/resources/images/5.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="5" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/5.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#6">
          <img src="<c:url value="/resources/images/6.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="6" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/6.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#7">
          <img src="<c:url value="/resources/images/7.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="7" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/7.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#8">
          <img src="<c:url value="/resources/images/8.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="8" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/8.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#9">
          <img src="<c:url value="/resources/images/9.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="9" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/9.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#10">
          <img src="<c:url value="/resources/images/10.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="10" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/10.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#11">
          <img src="<c:url value="/resources/images/11.JPG" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="11" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/11.JPG" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#12">
          <img src="<c:url value="/resources/images/12.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="12" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/12.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#13">
          <img src="<c:url value="/resources/images/13.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="13" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/13.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#14">
          <img src="<c:url value="/resources/images/14.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="14" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/14.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#15">
          <img src="<c:url value="/resources/images/15.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="15" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/15.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#16">
          <img src="<c:url value="/resources/images/16.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="16" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/16.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#17">
          <img src="<c:url value="/resources/images/17.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="17" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/17.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#18">
          <img src="<c:url value="/resources/images/18.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="18" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/18.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#19">
          <img src="<c:url value="/resources/images/19.jpg" />" alt="TestDisplay"/>
        </a>
        <div class="modal fade" id="19" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="<c:url value="/resources/images/19.jpg" />" alt="TestDisplay"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>          
</section>

              <%@include file="footer.jsp" %>
