 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
 
<body>	 
		 
		          <table class="table table-striped">
					  <tr>
					  	<td>propertyId</td>
					 	 <td>${property.propertyId}</td>
					  </tr>
					   <tr>
					  	<td>propertyName</td>
					 	 <td>${property.propertyName}</td>
					  </tr>
					   <tr>
					  	<td>propertyType</td>
					 	 <td>${property.propertyType}</td>
					  </tr>
					   <tr>
					  	<td>propertySubType</td>
					 	 <td>${property.propertySubType}</td>
					  </tr>
					  
					   <tr>
					  	<td>numberOfUnits</td>
					 	 <td>${property.numberOfUnits}</td>
					  </tr>
					   <tr>
					  	<td>rentalOwner</td>
					 	 <td>${property.rentalOwner}</td>
					  </tr>
					    <tr>
					  	<td>operatingAccount</td>
					 	 <td>${property.operatingAccount}</td>
					  </tr>
					  
					    <tr>
					  	<td>propertyReserve</td>
					 	 <td>${property.propertyReserve}</td>
					  </tr>
					  
					    <tr>
					  	<td>street</td>
					 	 <td>${property.street}</td>
					  </tr>
					  
					    <tr>
					  	<td>city</td>
					 	 <td>${property.city}</td>
					  </tr>
					  
					    <tr>
					  	<td>state</td>
					 	 <td>${property.state}</td>
					  </tr>
					  
					   <tr>
					  	<td>zip</td>
					 	 <td>${property.zip}</td>
					  </tr>
		</table>
</body>		
		
		
