 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<jsp:include page="header.jsp"/>
<jsp:include page="header1.jsp"/>
<div class="row">
<!--    <div class="col-lg-2">  </div> -->
    <div class="col-lg-8">
    <div class="panel panel-info">
         <div class="panel-heading">
             <div class="panel-title"><B>Add Property</B></div>
             <div style="float:right; font-size: 85%; position: relative; top:-10px"></div>
         </div> 
         <div class="panel-body" >
		<form:form method="post" action="./addNewProperty" modelAttribute="property">
		 	<div class="form-group propertyName">
			    <label for="propertyName">Property Name</label>
			    <form:input class="form-control" path="propertyName" id="propertyName" placeholder="Enter property name."/>
					<div id="propertyNameError">
         				<form:errors  path="propertyName"/>
        			</div>
		 	 </div>
		 	 
		 	 <div class="form-group propertyType">
			    <label for="propertyType">Property Type</label>
			    <form:select class="form-control" path="propertyType" id="propertyType">
			    	  <form:option  value="Select" label="Select"/>
				      <form:option value="Residential" label="Residential"/>
				      <form:option value="Commercial" label="Commercial"/>
		    	</form:select>
					<div id="propertyTypeError">
         				<form:errors  path="propertyType"/>
        			</div>
				</div>
		 	 
		 	  <div class="form-group">
			    <label for="propertySubType">Property Sub Type</label>
			    <form:select class="form-control" path="propertySubType" id="propertySubType">
				      <form:option  value="Select" label="Select"/>
		    	</form:select>
		 	 </div>
		 	 
		 	 <div class="form-group">
			    <label for="numberOfUnits">Number of Units</label>
			   <form:input class="form-control" path="numberOfUnits" id="numberOfUnits" placeholder="units"/>
		 	 </div>
		 	<hr/>
		 	
		 	 <div class="form-group">
			    <label for="rentalOwner">Rental Owner (Optional)</label>
			   <form:input class="form-control" path="rentalOwner" id="rentalOwner" placeholder="Enter Owner"/>
		 	 </div>
		 	 <div class="form-group">
			    <label for="operatingAccount">Operating Account</label>
			   <form:input class="form-control" path="operatingAccount" id="operatingAccount" placeholder="Enter Operating Account"/>
		 	 </div>
		 	 <div class="form-group">
			    <label for="propertyReserve">Property Reserve</label>
			   <form:input  class="form-control" path="propertyReserve" id="propertyReserve" placeholder="Enter Property Reserve"/>
		 	 </div>
		 	<hr/>
		 	
		 	 <div class="form-group">
			    <label for="street">Street</label>
			   <form:input class="form-control" path="street" id="street" placeholder="Enter Street."/>
		 	 </div>
		 	  <div class="form-group">
			    <label for="city">City</label>
			   <form:input class="form-control" path="city" id="city" placeholder="Enter City."/>
		 	 </div>
	
		 	 <div class="form-group">
			    <label for="country">Country</label>
			     <form:select path="country" class="form-control" id="country">
				      <form:option value="Select Country" label="Select Country"/>
				       <form:options items = "${countryList}" />
		    	</form:select>
		 	 </div> 
		 	  
		 	  <div class="form-group">
			    <label for="state">State</label>
			     <form:select path="state" class="form-control" id="state">
				      <form:option value="Select State" label="Select State"/>
		    	</form:select>
		 	 </div>
		 	 
		 	 <div class="form-group">
			    <label for="zip">Zip</label>
			    <form:input class="form-control" path="zip" id="zip" placeholder="Enter Zip."/>
		 	 </div>
		 	 <button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
 </div>
</div>
</div>
<jsp:include page="footer.jsp"/>

