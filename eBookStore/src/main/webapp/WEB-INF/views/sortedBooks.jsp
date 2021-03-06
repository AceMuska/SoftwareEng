<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">This is what we have:</p>

            <div class="btn-group">
                <button><a href="<c:url value="/productList/sortedTitle" />">Sort By Title</a></button>
                <button><a href="<c:url value="/productList/sortedAuthors" />">Sort By Author</a></button>
                <button><a href="<c:url value="/productList/sortedPrice" />">Sort By Price</a></button>
                <button><a href="#">Sort By Book Rating</a></button>
                <button><a href="<c:url value="/productList/sortedReleaseDate" />">Sort By Release Date</a></button>
            </div>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Author's Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="https://ewedit.files.wordpress.com/2016/09/hpsorcstone.jpg" alt="image" style="width:50%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productAuthor}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/template/footer.jsp"%>