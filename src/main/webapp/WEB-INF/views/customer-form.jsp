<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer relationship management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--reference to our style sheet--%>
    <link rel="stylesheet" href="../../css/style.css" type="text/css">
    <link rel="stylesheet" href="../../css/add-customer-style.css" type="text/css">
</head>
<body>


<div id="wrapper">
    <div id="header">
        <h2>Save Customer</h2>

        <form:form action="saveCustomer" modelAttribute="customer" method="POST">

            <!-- need to associate this data with customer id -->
            <form:hidden path="id" />

            <table>
                <tbody>
                <tr>
                    <td><label>First name:</label></td>
                    <td><form:input path="firstName" /></td>
                </tr>

                <tr>
                    <td><label>Last name:</label></td>
                    <td><form:input path="lastName" /></td>
                </tr>

                <tr>
                    <td><label>Email:</label></td>
                    <td><form:input path="email" /></td>
                </tr>

                <tr>
                    <td><label></label></td>
                    <td><input type="submit" value="Save" class="save" /></td>
                </tr>


                </tbody>
            </table>


        </form:form>
        <%--<form action="saveCustomer" method="post">--%>
            <%--<table>--%>
                <%--<tbody>--%>
                <%--<tr>--%>
                    <%--<td><label>First name:</label></td>--%>
                    <%--<td><input name="firstName"/></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><label>Last name:</label></td>--%>
                    <%--<td><input name="lastName"/></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><label>Email:</label></td>--%>
                    <%--<td><input name="email"/></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><label></label></td>--%>
                    <%--<td><input type="submit" value="save" class="save"/></td>--%>
                <%--</tr>--%>

                <%--</tbody>--%>
            <%--</table>--%>
        <%--</form>--%>
        <div style="clear:both;"></div>
        <p>
            <a href="/customer/list"></a>
        </p>
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
