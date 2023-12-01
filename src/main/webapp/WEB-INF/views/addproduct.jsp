<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Product</title>
</head>
<body>
<div align="center">
    <h2>Add Product</h2>
    <form:form action="/admin/successaddproduct" method="post" modelAttribute="product" enctype="multipart/form-data">

        <form:label path="productName">Product Name</form:label>
        <form:input path="productName"/><br/>

        <form:label path="productDescription">Product Description</form:label>
        <form:textarea path="productDescription" cols="25" rows="5"/><br/>

        <form:label path="price">Price</form:label>
        <form:input path="price"/><br/>

        <select name="Categories">
            <c:forEach items="${Categories}" var="Categorie">
                <option value="${Categorie.categoryId}"><c:out value="${Categorie.type}" /></option>
            </c:forEach>
        </select><br/>

        <input type="file" name="image" class="form-control" accept="image/jpeg,image/png">

        <form:button>Add Product</form:button>
    </form:form>
</div>
</body>
</html>