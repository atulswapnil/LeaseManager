 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
 
 
<style type="text/css">
/*  bhoechie tab */
div.bhoechie-tab-container{
  z-index: 10;
  background-color: #ffffff;
  padding: 0 !important;
  border-radius: 4px;
  -moz-border-radius: 4px;
  border:1px solid #ddd;
  margin-top: 20px;
  margin-left: 50px;
  -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  box-shadow: 0 6px 12px rgba(0,0,0,.175);
  -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
}
div.bhoechie-tab-menu{
  padding-right: 0;
  padding-left: 0;
  padding-bottom: 0;
}
div.bhoechie-tab-menu div.list-group{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a .glyphicon,
div.bhoechie-tab-menu div.list-group>a .fa {
  color: #5A55A3;
}
div.bhoechie-tab-menu div.list-group>a:first-child{
  border-top-right-radius: 0;
  -moz-border-top-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a:last-child{
  border-bottom-right-radius: 0;
  -moz-border-bottom-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a.active,
div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
div.bhoechie-tab-menu div.list-group>a.active .fa{
  background-color: #5A55A3;
  background-image: #5A55A3;
  color: #ffffff;
}
div.bhoechie-tab-menu div.list-group>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #5A55A3;
}

div.bhoechie-tab-content{
  background-color: #ffffff;
  /* border: 1px solid #eeeeee; */
  padding-left: 20px;
  padding-top: 10px;
}

div.bhoechie-tab div.bhoechie-tab-content:not(.active){
  display: block;
}
  
 </style>
<body> 
<jsp:include page="header.jsp"/>
  <div class="container">
	<div class="row">
	 <!-- Left Box -->
        <div class="col-md-4">
          <div class="row">
            <div class="col-md-12">
              <div class="well">
              		<h4>Expiring Leases</h4>
					<div class="alert alert-danger" role="alert">
					  <a href="#" class="alert-link">Leases expiring in 30 days or less </a><span class="badge badge-primary" style="float: right">15</span>
					</div>
					<div class="alert alert-warning" role="alert">
					  <a href="#" class="alert-link">Leases expiring in  31 - 60 days</a>  &nbsp;&nbsp;&nbsp;<span class="badge" style="float: right">30</span>
					  
					</div>
					<div class="alert alert-info" role="alert">
					   <a href="#" class="alert-link">Leases expiring in  61 - 90 days </a>&nbsp;&nbsp;&nbsp;<span class="badge" style="float: right">10</span>
					</div>
					 <button type="button" class="btn btn-block btn-primary">View All <span class="badge">55</span></button>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="well">
              		<p><a href="./properties">Properties</a>
					<p><a href="./getAddNewPropertyForm">Add New Property</a>
					<p><a href="./test">Add New Property</a>
              </div>
            </div>
          </div>
          
           <div class="well">
            		<h4>Outstanding Balances - Rentals</h4>
            		<div class="alert-link"><H3>$18,300.00</H3> Total outstanding Balances</div>
              		 <div class="list-group">
						  <a href="#" class="list-group-item">74 Grove Street (Single family home) - 1 next two lines<span class="badge badge-danger">$1,650.00</span></a>
						  <a href="#" class="list-group-item">One Grove Street 1 <span class="badge badge-danger">$1,650.00</span></a>
						  <a href="#" class="list-group-item">74 Grove Street (Family home) - 1 <span class="badge badge-danger">$650.00</span></a>
						  <a href="#" class="list-group-item">Grove Street (Family home) - 1 <span class="badge badge-danger">$1,450.00</span></a>
					 </div> 
					 <button type="button" class="btn btn-primary">View All <span class="badge">8</span></button> 
              </div>
          
          
        </div>
        
        <!-- Middle Box -->
        <div class="col-md-4">
            <div class="well">
              		<h4>Rental Applications</h4>
					 <ul class="nav nav-tabs">
					  <li  class="active"><a data-toggle="tab" href="#new">New</a></li>
					  <li><a data-toggle="tab" href="#undecided">Undecided</a></li>
					  <li><a data-toggle="tab" href="#approved">Approved</a></li>
					</ul>
					
					<div class="tab-content">
					  <div id="new" class="tab-pane fade in active">
					     <div class="list-group">
						  <a href="#" class="list-group-item">Alex P<span style="float: right;"><small>~ 10 min ago</small></h6></span></a>
						  <a href="#" class="list-group-item">Jon J<span style="float: right;"><h6>~ 10 min ago</h6></span></a>
						  <a href="#" class="list-group-item">Sam K<span style="float: right;"><h6>~ 20 min ago</h6></span></a>
						</div>
					  </div>
					  <div id="undecided" class="tab-pane fade">
					    <div class="list-group">
						  <a href="#" class="list-group-item">Swapnil P<span style="float: right;"><h6>~ 10 min ago</h6></span></a>
						  <a href="#" class="list-group-item">Pulak J<span style="float: right;"><h6>~ 15 min ago</h6></span></a>
						  <a href="#" class="list-group-item">Ram K<span style="float: right;"><h6>~ 25 min ago</h6></span></a>
						</div>
					  </div>
					  <div id="approved" class="tab-pane fade">
					     <div class="list-group">
						  <a href="#" class="list-group-item">Kim P<span style="float: right;"><h6>~ 15 min ago</h6></span></a>
						  <a href="#" class="list-group-item">Yung J<span style="float: right;"><h6>~ 20 min ago</h6></span></a>
						  <a href="#" class="list-group-item">Shyam K<span style="float: right;"><h6>~ 30 min ago</h6></span></a>
						</div>
					  </div>
						<button type="button" class="btn btn-primary">View All <span class="badge">10</span></button> 
					</div> 
					
              </div>
              <div class="well">
              		<h4>Expiring Leases</h4>
						<div class="list-group">
						  <a href="#" class="list-group-item list-group-item-danger">Leases expiring in 30 days or less<span class="badge">15</span></a>
						  <a href="#" class="list-group-item list-group-item-warning">Leases expiring in 31 - 60 days<span class="badge">30</span></a>
						  <a href="#" class="list-group-item list-group-item-info">Leases expiring in 61 - 90 days<span class="badge">25</span></a>
						</div> 
						<button type="button" class="btn btn-primary">View All <span class="badge">70</span></button> 
              </div>
              <div class="well">
              		<h4>Expiring Leases</h4>
					<div class="alert alert-danger" role="alert">
					  Leases expiring in <a href="#" class="alert-link">30 days or less  30</a> 10
					</div>
					<div class="alert alert-warning" role="alert">
					  Leases expiring in <a href="#" class="alert-link">31 - 60 days</a> 30
					</div>
					<div class="alert alert-info" role="alert">
					  Leases expiring in <a href="#" class="alert-link">61 - 90 days</a> 50
					</div>
					<button type="button" class="btn btn-primary">View All <span class="badge">15</span></button> 
              </div>
        </div>
     
        <!-- Right Box -->
        <!-- 
        <div class="col-md-4">         
              <div class="well">
              		<h4>Expiring Leases</h4>
					<div class="alert alert-danger" role="alert">
					  Leases expiring in <a href="#" class="alert-link">30 days or less  30</a> 10
					</div>
					<div class="alert alert-warning" role="alert">
					  Leases expiring in <a href="#" class="alert-link">31 - 60 days</a> 30
					</div>
					<div class="alert alert-info" role="alert">
					  Leases expiring in <a href="#" class="alert-link">61 - 90 days</a> 50
					</div>
					<button type="button" class="btn btn-primary">View All <span class="badge">15</span></button> 
              </div>
              <div class="well">
              		<h4>Expiring Leases</h4>
					<div class="alert alert-danger" role="alert">
					  Leases expiring in <a href="#" class="alert-link">30 days or less  30</a> 10
					</div>
					<div class="alert alert-warning" role="alert">
					  Leases expiring in <a href="#" class="alert-link">31 - 60 days</a> 30
					</div>
					<div class="alert alert-info" role="alert">
					  Leases expiring in <a href="#" class="alert-link">61 - 90 days</a> 50
					</div>
					<div><button type="button" class="btn btn-primary">View All <span class="badge">25</span></button></div> 
              </div>
        </div>
         -->
 </div>
 </div>
    
</body>
<script src="js/LeaseManager.js"></script>
<jsp:include page="footer.jsp"/>

