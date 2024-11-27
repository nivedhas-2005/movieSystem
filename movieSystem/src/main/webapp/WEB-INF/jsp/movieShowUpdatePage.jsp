<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Show Update</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
            color: #444;
        }

        /* Container */
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        /* Header */
        h2 {
            color: #333;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        /* Movie Details Styling */
        .movie-details {
            margin-bottom: 20px;
        }
        .movie-details p {
            margin: 5px 0;
            font-size: 14px;
            color: #555;
        }

        /* Form Styling */
        .form-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }
        .form-group label {
            font-size: 14px;
            color: #333;
            width: 40%;
        }
        .form-group input[type="text"] {
            width: 55%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        /* Submit and Reset Buttons */
        .button-group {
            text-align: center;
            margin-top: 20px;
        }
        .button-group input[type="submit"],
        .button-group input[type="reset"] {
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 0 5px;
        }
        .button-group input[type="submit"] {
            background-color: #007bff;
            color: #fff;
        }
        .button-group input[type="reset"] {
            background-color: #6c757d;
            color: #fff;
        }
        .button-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .button-group input[type="reset"]:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Movie Details</h2>

    <!-- Displaying movie details -->
    <div class="movie-details">
        <p><strong>Movie Id:</strong> ${movie.movieId}</p>
        <p><strong>Movie Name:</strong> ${movie.movieName}</p>
        <p><strong>Movie Language:</strong> ${movie.language}</p>
        <p><strong>Movie Genre:</strong> ${movie.genre}</p>
        <p><strong>Movie Duration:</strong> ${movie.duration} minutes</p>
        <p><strong>Movie Rating:</strong> ${movie.rating}</p>
    </div>

    <h2>Show Time Update</h2>
    
    <!-- Form to update show times -->
    <form action="${pageContext.request.contextPath}/updateMovieShow" method="post">
        <input type="hidden" name="movieId" value="${movie.movieId}">
        
        <!-- Check if showList is not empty -->
        <c:if test="${not empty showList}">
            <c:forEach var="show" items="${showList}">
                <div class="form-group">
                    <label for="showTimeId_${show.showTimeId}">Show Time ID</label>
                    <input type="text" id="showTimeId_${show.showTimeId}" name="showTimeId_${show.showTimeId}" value="${show.showTimeId}">
                </div>
                <div class="form-group">
                    <label for="premierSeat_${show.showTimeId}">Premier Seat Number</label>
                    <input type="text" id="premierSeat_${show.showTimeId}" name="premierSeat_${show.showTimeId}" value="${show.premierSeat}">
                </div>
                <div class="form-group">
                    <label for="royalSeat_${show.showTimeId}">Royal Seat Number</label>
                    <input type="text" id="royalSeat_${show.showTimeId}" name="royalSeat_${show.showTimeId}" value="${show.royalSeat}">
                </div>
                <hr>
            </c:forEach>
        </c:if>

        <!-- Message if showList is empty -->
        <c:if test="${empty showList}">
            <p>No show times available for this movie.</p>
        </c:if>

        <!-- Submit and Reset buttons -->
        <div class="button-group">
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </div>
    </form>
</div>

</body>
</html>
