<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>ADMIN PANEL</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<h1 class="text-center">ADMIN PANEL</h1>
Welcome ${adminUser.userName } <br/>
<%-- Pass  ${adminUser.pass } --%> <br/>

<form action="/admin/addproduct" method="get">
    <input type="submit" value="Add Product" />
</form>

<form action="/viewProduct" method="get">
    <input type="submit" value="View Product" />
</form>

<!-- <button action="/admin/addproduct">Add Product</button> -->
</body>
</html>