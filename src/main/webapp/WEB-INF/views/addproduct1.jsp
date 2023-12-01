<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"--%>
<%--         pageEncoding="ISO-8859-1"%>--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- saved from url=(0091)file:///C:/Users/Yash/OneDrive/Desktop/Add%20Product%20-%20Dashboard%20HTML%20Template.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Product </title>
    <link rel="stylesheet" href="/resources/css2/css_addproduct">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="../resources/css2/fontawesome.min_addproduct.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="/resources/js/jquery-ui.min_addproduct.css" type="text/css">
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="/resources/css2/bootstrap.min_addproduct.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="/resources/css2/templatemo-style_addproduct.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
    <style>
        element.style {
        }
        body {
            font-family: Roboto, Helvetica, Arial, sans-serif;
            background-color: #4e657a;
            overflow-x: hidden;
        }
        body {
            margin: 0;
            font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            text-align: left;
            background-color: #fff;
        }
        *, ::after, ::before {
            box-sizing: border-box;
        }
        user agent stylesheet
        body {
            display: block;
            margin: 8px;
        }
        :root {
            --blue: #007bff;
            --indigo: #6610f2;
            --purple: #6f42c1;
            --pink: #e83e8c;
            --red: #dc3545;
            --orange: #fd7e14;
            --yellow: #ffc107;
            --green: #28a745;
            --teal: #20c997;
            --cyan: #17a2b8;
            --white: #fff;
            --gray: #6c757d;
            --gray-dark: #343a40;
            --primary: #007bff;
            --secondary: #6c757d;
            --success: #28a745;
            --info: #17a2b8;
            --warning: #ffc107;
            --danger: #dc3545;
            --light: #f8f9fa;
            --dark: #343a40;
            --breakpoint-xs: 0;
            --breakpoint-sm: 576px;
            --breakpoint-md: 768px;
            --breakpoint-lg: 992px;
            --breakpoint-xl: 1200px;
            --font-family-sans-serif: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
            --font-family-monospace: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
        }
        html {
            font-size: 16px;
            overflow-x: hidden;
        }
        html {
            font-family: sans-serif;
            line-height: 1.15;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
            -ms-overflow-style: scrollbar;
            -webkit-tap-highlight-color: transparent;
        }
        *, ::after, ::before {
            box-sizing: border-box;
        }
        *, ::after, ::before {
            box-sizing: border-box;
        }
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }
        ::-webkit-scrollbar-thumb {
            background: #6d8da6;
        }
        ::-webkit-scrollbar-track {
            background: #394f62;
            background-image: initial;
            background-position-x: initial;
            background-position-y: initial;
            background-size: initial;
            background-repeat-x: initial;
            background-repeat-y: initial;
            background-attachment: initial;
            background-origin: initial;
            background-clip: initial;
            background-color: rgb(57, 79, 98);
        }
    </style></head>


<body>
<nav class="navbar navbar-expand-xl">
    <div class="container h-100">
        <a class="navbar-brand" href="https://technext.github.io/product-admin/index.html">
            <h1 class="tm-site-title mb-0" align="center">Product Admin</h1>
        </a>
        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars tm-nav-icon"></i>
        </button>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link d-block" href="https://technext.github.io/product-admin/login.html">
                    Admin, <b>Logout</b>
                </a>
            </li>
        </ul>
    </div>

</nav>
<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Add Product</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <form action="/admin/successaddproduct" method="post" class="tm-edit-product-form" enctype="multipart/form-data">
                            <div class="form-group mb-3">
                                <label for="productName">Tên sự kiện
                                </label>
                                <input id="productName" name="productName" type="text" class="form-control validate" required="">
                            </div>
                            <div class="form-group mb-3">
                                <label for="productDescription">Description</label>
                                <textarea class="form-control validate" name="productDescription" rows="3" required=""></textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label for="ngay">Lịch chiếu
                                </label>
                                <input id="ngay" name="ngay" type="text" class="form-control validate" required="">
                            </div>
                            <div class="form-group mb-3">
                                <label for="Categories">Category</label>
                                <select class="custom-select tm-select-accounts" id="Categories" name="Categories">
                                    <c:forEach items="${Categories}" var="Categories">
                                        <option value="${Categories.categoryId }"><c:out value="${Categories.type }"></c:out></option>
                                    </c:forEach>

                                </select>
                            </div>
                            <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label for="price">Price
                                    </label>
                                    <input id="price" name="price" type="text" class="form-control validate hasDatepicker" data-large-mode="true">
                                </div>
                            </div>

                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                        <div class="tm-product-img-dummy mx-auto" >
                            <img id="frame"  width="300" height="240" />

                            <!--  <i class="fas fa-cloud-upload-alt tm-upload-icon"></i> -->
                        </div>
                        <div class="custom-file mt-3 mb-3">
                            <!--  <input id="fileInput" type="file" style="display:none;"> -->
                            <!--             <input type="file" class="btn btn-primary btn-block mx-auto" name="image" value="UPLOAD PRODUCT IMAGE" accept="image/jpeg,image/png" onclick="document.getElementById(&#39;fileInput&#39;).click();"> -->
                            <input type="file" class="btn btn-primary btn-block mx-auto" name="image" value="UPLOAD PRODUCT IMAGE" accept="image/jpeg,image/png" onchange="preview_image(event)">

                        </div>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block text-uppercase">Add Product Now</button>
                    </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright © <b>2022</b> All rights reserved.

            Design: <a rel="nofollow noopener" href="https://templatemo.com/" class="tm-footer-link">Mobicity Portal</a>
        </p>
    </div>
</footer>

<script src="/resources/js/jquery-3.3.1.min_addproduct.js.download"></script>
<!-- https://jquery.com/download/ -->
<script src="/resources/js/jquery-ui.min_addproduct.js.download"></script>
<!-- https://jqueryui.com/download/ -->
<script src="/resources/css/bootstrap.min_addproduct.js.download"></script>
<!-- https://getbootstrap.com/ -->


<script type='text/javascript'>
    function preview_image(event)
    {
        frame.src=URL.createObjectURL(event.target.files[0]);
    }
</script>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body></html>