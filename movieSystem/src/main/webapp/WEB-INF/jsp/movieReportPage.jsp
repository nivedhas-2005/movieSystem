<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Report</title>
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
            max-width: 1000px;
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
            margin-top: 0;
            font-size: 24px;
            font-weight: bold;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #ffffff;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            font-size: 14px;
        }
        th {
            background-color: #007bff;
            color: #ffffff;
            text-align: center;
            font-weight: 600;
            font-size: 15px;
        }
        tr:nth-child(even) {
            background-color: #f8f9fb;
        }
        tr:hover {
            background-color: #f1f4f9;
        }
        td {
            vertical-align: top;
        }

        /* Show Details Styling */
        .show-details {
            font-size: 13px;
            line-height: 1.6;
            color: #666;
            padding: 5px 0;
        }
        .show-details strong {
            color: #444;
        }
        hr {
            border: none;
            border-top: 1px solid #eee;
            margin: 8px 0;
        }

        /* Action Links Styling */
        .action-links {
            display: flex;
            gap: 10px;
        }
        .action-links a {
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff;
            padding: 8px 12px;
            border-radius: 5px;
            font-weight: 500;
            font-size: 13px;
            transition: background-color 0.3s;
            text-align: center;
        }
        .action-links a:hover {
            background-color: #0056b3;
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }
            h2 {
                font-size: 20px;
            }
            th, td {
                font-size: 13px;
            }
            .show-details {
                font-size: 12px;
            }
            .action-links a {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Movie Report</h2>

    <table>
        <thead>
            <tr>
                <th>Movie Number</th>
                <th>Movie Name</th>
                <th>Language</th>
                <th>Genre</th>
                <th>Duration</th>
                <th>Rating</th>
                <th>Show Details</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="movie" items="${movieList}">
                <tr>
                    <td>${movie.movieId}</td>
                    <td>${movie.movieName}</td>
                    <td>${movie.language}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.duration}</td>
                    <td>${movie.rating}</td>
                    <td>
                        <c:forEach var="show" items="${movieMap[movie.movieId]}">
                            <div class="show-details">
                                <strong>Show Time:</strong> ${show.showTimeName}<br>
                                <strong>Royal Seat:</strong> ${show.royalSeat}<br>
                                <strong>Royal Booked:</strong> ${show.royalBooked}<br>
                                <strong>Premier Seat:</strong> ${show.premierSeat}<br>
                                <strong>Premier Booked:</strong> ${show.premierBooked}<br>
                            </div>
                            <hr>
                        </c:forEach>
                    </td>
                    <td class="action-links">
                        <a href="${pageContext.request.contextPath}/updateMovieShow/${movie.movieId}">Show Time Update</a>
                        <a href="${pageContext.request.contextPath}/movieUpdate/${movie.movieId}">Movie Update</a>
                        <a href="${pageContext.request.contextPath}/movieDeletion/${movie.movieId}">Movie Deletion</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
