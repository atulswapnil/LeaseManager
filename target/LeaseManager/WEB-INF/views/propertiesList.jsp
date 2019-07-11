 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<jsp:include page="header.jsp"/>
<jsp:include page="header1.jsp"/>

<head>
<style>
* {
    box-sizing: border-box;
}

/* Create four equal columns that floats next to each other */
.column {
    float: left;
    width: 20%;
    padding: 10px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - makes the four columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .column {
        width: 100%;
    }
}


</style>

</head>
<body>
<div class="container">

<div class="row">
    <div class="col-lg-2"> 
    	
    </div>
    <div class="col-lg-10">
    
    <div class="row">
	    <div class="column"><h2  style="color:#3dbeb3">Properties</h2></div>
	    <div class="column"></div>
	    <div class="column"></div>
	    <div class="column">
	    	<a href="./getAddNewPropertyForm" type="button" class="btn btn-primary form-control">Add Property</a>
	    </div>
	    <div class="column">
	    	<button type="button" class="btn btn-info form-control" data-toggle="collapse" data-target="#searchBox">
      			<span class="glyphicon glyphicon-search"></span> Search
     	  	</button>
     	 </div> 
    </div>
    <form:form method="post" action="#" modelAttribute="property">
    	<div id="searchBox" class="row collapse bg-info">
		  <!-- 
		  <div class="column">
		  	<div>
			    <label>Status</label>
			    <form:select class="form-control" path="propertyType" id="propertyType">
			    	  <form:option  value="Select" label="Select"/>
				      <form:option value="AC" label="Active"/>
				      <form:option value="INAC" label="Inactive"/>
				      <form:option value="ALL" label="All"/>
		    	</form:select>
			</div>
		  </div>
		  <div class="column">
		  	<div>
			    <label>Location</label>
			    <form:select class="form-control" path="state" id="state">
			    	  <form:option  value="Select" label="Select"/>
			    	  <c:forEach var="property" items="${listOfProperty}">
				      	<form:option value="${property.state}" label="${property.state}"/>
				      </c:forEach>
		    	</form:select>
			</div>
		  </div>
		  <div class="column">
		  	<div>
			    <label>Preferred Vendor</label>
			    <form:select class="form-control" path="propertyType" id="propertyType">
			    	  <form:option  value="All" label="All"/>
		    	</form:select>
			</div>
		  </div>
		  <div class="column">
		  	<div>
			    <label>Type</label>
			    <form:select class="form-control" path="propertyType" id="propertyType">
			    	  <form:option  value="Select" label="Select"/>
			    	  <c:forEach var="property" items="${listOfProperty}">
				      	<form:option value="${property.propertyType}" label="${property.propertyType}"/>
				      </c:forEach>
		    	</form:select>
			</div>
		  
		  </div>
		  -->
		  <div class="column">
		    <div class='col-md-5'>
		        <div class="form-group">
		            <div class='input-group date' id='datetimepicker6'>
		                <input type='text' class="form-control" />
		                <span class="input-group-addon">
		                    <span class="glyphicon glyphicon-calendar"></span>
		                </span>
		            </div>
		        </div>
		    </div>
		    <div class='col-md-5'>
		        <div class="form-group">
		            <div class='input-group date' id='datetimepicker7'>
		                <input type='text' class="form-control" />
		                <span class="input-group-addon">
		                    <span class="glyphicon glyphicon-calendar"></span>
		                </span>
		            </div>
		        </div>
		    </div>
		</div>
		  <div class="column">
		  	<label></label>
		  	<div>
		  		<button type="button" class="btn btn-info">Apply</button>
     	  	</div>
     	  </div>
		</div>
		
		

		</form:form> 
		
		<table class="table table-sm">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">Property</th>
		      <th scope="col">Location</th>
		      <th scope="col">Owner</th>
		      <th scope="col">Type</th>
		      <th scope="col">Details</th>
		    </tr>
		  </thead>
		  <tbody>
		   <c:forEach var="property" items="${listOfProperty}">
		    <tr>
		      <td>${property.propertyName}</td>
		      <td>${property.state}, ${property.country}</td>
		      <td>${property.rentalOwner}</td>
		      <td>${property.propertyType}</td>
<%-- 		      <td><a href="./propertyDetails/${property.propertyId}">Details</a></td> --%>
		      <td>
		      
		      	<a data-toggle="modal" data-target="#myModal${property.propertyId}">Details</a>&nbsp;&nbsp;
        		<a href="#" title="Edit"><span class="glyphicon glyphicon-edit"></span></a>&nbsp;&nbsp;
		      	<a href="#" title="Delete"><span class="glyphicon glyphicon-trash"></span> </a>
		      	
		      </td>
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>
    </div>
    <nav>
		<ul class="pagination">
			<li>
				<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li class="active"><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">6</a></li>
			<li><a href="#">7</a></li>
			<li>
				<a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
	 <div class="col-lg-2">
	
	 <!-- Modal -->
	 <c:forEach var="property" items="${listOfProperty}">
		 <div class="modal fade" id="myModal${property.propertyId}" role="dialog"> 
		 	<div class="modal-dialog">
		      
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Property Details</h4>
		        </div>
		        <div class="modal-body">
			        <table class="table table-striped">
					  <tr>
					  	<td>propertyName</td><td>${property.propertyName}</td>
					  </tr>
					   <tr>
					  	<td>propertyType</td><td>${property.propertyType}</td>
					  </tr>
					   <tr>
					  	<td>propertySubType</td><td>${property.propertySubType}</td>
					  </tr>
					   <tr>
					  	<td>numberOfUnits</td><td>${property.numberOfUnits}</td>
					  </tr>
					   <tr>
					  	<td>rentalOwner</td><td>${property.rentalOwner}</td>
					  </tr>
					    <tr>
					  	<td>operatingAccount</td><td>${property.operatingAccount}</td>
					  </tr>
					    <tr>
					  	<td>propertyReserve</td><td>${property.propertyReserve}</td>
					  </tr>
					    <tr>
					  	<td>street</td><td>${property.street}</td>
					  </tr>
					    <tr>
					  	<td>city</td><td>${property.city}</td>
					  </tr>
					    <tr>
					  	<td>state</td>	 <td>${property.state}</td>
					  </tr>
					   <tr>
					  	<td>zip</td><td>${property.zip}</td>
					  </tr>
					</table>
			      </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
			</div>
		 </div>
	</c:forEach>
	</div>
 </div>
</div>
<script type="text/javascript">
    $(function () {
        $('#datetimepicker6').datetimepicker();
        $('#datetimepicker7').datetimepicker({
            useCurrent: false //Important! See issue #1075
        });
        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });
        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
    });
</script>
<jsp:include page="footer.jsp"/>
