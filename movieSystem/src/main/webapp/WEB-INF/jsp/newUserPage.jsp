<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <script type="text/javascript">
        function passwordCheck() {
            var pass1 = (document.getElementById("pass1").value).toString();
            var pass2 = (document.getElementById("pass2").value).toString();
            if(pass1.length<5 || pass1.length>10){
                alert("Password length must be between 5 to 10 characters");
                return;
            }
            
            if (pass1 === pass2) {
                document.getElementById("registrationForm").submit();
            } else {
                alert("Passwords do not match!");
            }
        }
    </script>
</head>
<body>

<div>
    <h2>Register New User</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">

        <div>
            <label for="username">Enter New User Id</label>
            <form:input path="username" id="username" />
        </div>

        <div>
            <label for="pass1">Enter New Password</label>
            <form:input type="password" id="pass1" path="password" />
        </div>

        <div>
            <label for="pass2">Re-type New Password</label>
            <input type="password" id="pass2" />
        </div>

        <div>
            <label for="name">Enter User's Full Name</label>
            <form:input path="name" id="name" />
        </div>

        <div>
            <label for="email">Enter Email</label>
            <form:input path="email" id="email" />
        </div>

        <div>
            <label for="role">Select User Role</label>
            <form:input list="types" name="type" id="type" path="role" />
            <datalist id="types">
                <option value="Customer"></option>
                <option value="Admin"></option>
            </datalist>
        </div>

        <div>
            <button type="button" onclick="passwordCheck();">Submit</button>
            <button type="reset">Reset</button>
        </div>

    </form:form>
</div>

</body>
</html>
