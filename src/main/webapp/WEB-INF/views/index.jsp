<html>
<head>
<%@include file="./base.jsp" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<style>
	body {
	
	background-size: cover;
	
}

</style> 
</head>
<body background="${pageContext.request.contextPath}/resources/image/bg.jpg">

<div class="container mt-3">

	<div class="row">
	
		<div class="col-md-12">
		
			<h1 class="text-center mb-3"style="color:red">Welcome to Product App</h1>
			<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
       <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product}" var="pro">
    <tr>
      <th scope="row">TECHONLY${pro.id }</th>
      <td>${pro.name }</td>
      <td>${pro.description }</td>
      <td class="font-weight-bold">&#x20B9;${pro.price }</td>
      <td>
      	<a href="delete/${pro.id}">
      		<i class="fas fa-trash text-danger"></i>
      	</a>
      	
      	<a href="update/${pro.id}">
      		<i class="fas fa-pen-nib text-primary"></i>
      	</a>
      	
      </td>
    </tr>
    </c:forEach>
    
  </tbody>
</table>
<div>
<div class="container text-center">
	<a href="add-product" class="btn btn-outline-success">Add Product</a>
		
		</div>
	</div>

</div>

</body>
</html>