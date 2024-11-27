<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Movie Booking System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        h1 {
            font-family: "Monotype Corsiva", cursive;
            text-align: center;
            margin-top: 50px;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(51, 51, 51, 0.8);
            border-radius: 5px;
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .navbar a, .dropdown .dropbtn {
            font-size: 18px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            border: none;
            background: none;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar a:hover, .dropdown .dropbtn:hover {
            background-color: red;
            transform: scale(1.05);
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
            opacity: 1;
        }

        @media screen and (max-width: 600px) {
            .navbar a, .dropdown .dropbtn {
                font-size: 16px;
                padding: 10px;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div align="center">
        <h1>Welcome To Online Movie Booking System</h1>
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">Movie Management</button>
                <div class="dropdown-content">
                    <a href="/addMovie">Movie Addition</a>
                    <a href="/movieReport">Movie List</a>
                    <a href="/movieReportLanguage">Movie List by Language</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">Theater Management</button>
                <div class="dropdown-content">
                    <a href="/">Theater Addition</a>
                    <a href="/">Theater Update</a>
                    <a href="/">Theater Deletion</a>
                    <a href="/">Theater Reports</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">Showtime Management</button>
                <div class="dropdown-content">
                    <a href="/addShowTime">Showtime Addition</a>
                    <a href="/showTimeReport">Showtime Report</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">Booking Management</button>
                <div class="dropdown-content">
                    <a href="/">New Booking</a>
                    <a href="/">Booking Update</a>
                    <a href="/">Cancellation</a>
                    <a href="/">Booking Report</a>
                </div>
            </div>
            <a href="/logout">Logout</a>
        </div>
    </div>
</body>
</html>
