<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer relationship management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--reference to our style sheet--%>
    <link rel="stylesheet" href="../../css/style.css" type="text/css">
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div id="container">
    <div id="content">
        <table>

            <input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;"
                   class="add-button">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>


            <c:forEach var="tempCustomer" items="${customers}">

                <!-- construct an "update" link with customer id -->
                <c:url var="updateLink" value="/customer/showFormForUpdate">
                    <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>

                <tr>
                    <td> ${tempCustomer.firstName} </td>
                    <td> ${tempCustomer.lastName} </td>
                    <td> ${tempCustomer.email} </td>

                    <td>
                        <!-- display the update link -->
                        <a href="${updateLink}">Update</a>
                        <a href="${deleteLink}"
                        onclick="if(!(confirm('Are you sure you want to delete this customer')))return false">Delete</a>
                    </td>

                </tr>

            </c:forEach>
            <%--<c:forEach var="tempCustomer" items="${customers}">--%>

            <%--&lt;%&ndash;consturct an update link with customer id&ndash;%&gt;--%>
            <%--<c:url var="updateLink" value="/customer/showFormForUpdate">--%>
            <%--<c:param name="id" value="${tempCustomer.id}"/>--%>
            <%--</c:url>--%>

            <%--<tr>--%>
            <%--<td>${tempCustomer.firstName}</td>--%>
            <%--<td>${tempCustomer.lastName}</td>--%>
            <%--<td>${tempCustomer.email}</td>--%>

            <%--<td>--%>
            <%--<a href="${updateLink}">Update</a>--%>
            <%--</td>--%>
            <%--</tr>--%>
            <%--</c:forEach>--%>
        </table>

    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</body>
</html>
