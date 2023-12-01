<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <title>Admin Dashboard</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-witdh, initial-scale=1.0" />
    <link type="text/css" rel="stylesheet" href="../resources/css2/style_admin.css" />
    <link type="text/css" rel="stylesheet" href="../resources/css2/font-awesome.min_admin.css" />

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600;700&display=swap" rel="stylesheet">

    <style type="text/css">

        .scroll {

            overflow-x: hidden;
            overflow-y: auto;

        }



    </style>


</head>

<body>
<section id="sidebar">
    <div class="sidebar-brand">
        <h2> <div>Ticket Box Admin Panel</div></h2>
    </div>
    <div class="sidebar-menu">
        <ul>
            <li><a href="#"> <span>Dashboard</span></a></li>
            <li><a href="#"><span>Customers</span></a></li>
            <li><a href="/customerQuery"> <span>Customer Queries</span></a></li>
            <li><a href="viewProduct"> <span>Events</span></a></li>
            <li><a href="/admin/addproduct"> <span>Add Event</span></a></li>
            <li><a href="#"> <span>Tickets</span></a></li>
            <li><a href="/viewCategory"> <span>Categories</span></a></li>
            <li><a href="/admin/addCategory"> <span>Add Category</span></a></li>
            <li><a href="#"> <span>Account</span></a></li>
            <li><a href="/adminLogout"> <span>Logout</span></a></li>
        </ul>
    </div>
</section>

<Section id="main-content">
    <header>
        <div class="header-left">
            <h2 class="toggle-btn">
                Ticket Box Admin </h2>
        </div>
        <div class="header-left header-serach">
            <div class="serach-par">
                <input class="search" type="text" placeholder="Search Here...">

            </div>
        </div>
        <div class="header-left header-profile">
            <img src="../assets/img/avatar.png" class="img-responsive" />
            <h3>TicketBox</h3>
            <p>Admin</p>
        </div>
        <div class="clear"></div>
    </header>
    <div class="clear"></div>
    <div class="main-content-info container">
        <div class="card">
            <h2 class=" cus-h">${customerCount}</h2>
            <p>Customers</p>
        </div>
        <div class="card">
            <h2 class=" cus-pro">${productCount }</h2>
            <p>Products</p>
        </div>
        <div class="card">
            <h2 class=" cus-ord">${countOrder }</h2>
            <p>Order</p>
        </div>
        <div class="clear"></div>
    </div>
    <div class="content-pro-par container">
        <div class="pro-table scroll">
            <div class="recent-project">
                <div class="rec-pro-h">
                    <h2>View Events</h2>
                </div>
                <div class="clear"></div>
            </div>
            <table style="width:100%">
                <tr>
                    <th>Name</th>
                    <th>Image</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach items="${products }" var="prd" >


                    <tr>
                        <td>${prd.productName }</td>
                        <td><img src=/${prd.productimage } width="100px" alt="image" /></td>
                        <td><a href="/editProduct/${prd.pId }">Edit</a></td>
                        <td><a href="/deleteProduct/${prd.pId }">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="pro-cus">
            <div class="recent-project">
                <div class="rec-pro-h">
                    <h2>All Customers</h2>
                </div>
                <div class="see-all">
                    <button>See all</button>
                </div>
                <div class="clear"></div>
            </div>
            <table style="width:100%">
                <tr>
                    <th>Pic</th>
                    <th>Name</th>
                    <th>Contact</th>
                </tr>
                <c:forEach items="${Customer}" var="customer">
                    <tr>
                        <td><img class="table-img" src="../assets/img/avatar.png"/></td>
                        <td>${customer.fullName }</td>

                    </tr>
                </c:forEach>



            </table>
        </div>
        <div class="clear"></div>
    </div>
</Section>
<div class="clear"></div>




<script type="text/javascript" src="../resources/js/jquery-3.2.1.min_admin.js"></script>
<script type="text/javascript" src="../resources/js/external_admin.js"></script>
</body>

</html>
