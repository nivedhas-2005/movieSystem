<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Movie Booking</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-image: url('/images/popcorn.jpg');
  background-size: cover;
  background-attachment: fixed;
  color: #fff;
}

h1 {
  font-family: 'Monotype Corsiva', cursive;
  color: #ffcc00;
  font-size: 3em;
  text-shadow: 2px 2px 5px #333;
  margin-top: 50px;
}

.navbar {
  overflow: hidden;
  background-color: rgba(0, 0, 0, 0.7); /* Slightly transparent background */
  border-radius: 8px;
}

.navbar a, .dropbtn {
  float: left;
  font-size: 16px;
  color: #ffcc00; /* Golden color */
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #ff5722;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: #ffcc00;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
  cursor: pointer;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: rgba(255, 255, 255, 0.9);
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 1;
  border-radius: 5px;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
  color: black;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.logout-btn {
  float: right;
  font-size: 16px;
  color: #ffcc00;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.logout-btn:hover {
  background-color: #ff5722;
}

.container {
  text-align: center;
  padding: 20px;
  margin-top: 20px;
}
</style>
</head>
<body>

<div class="container">
  <h1>Welcome To Online Movie Booking System</h1>
  <div class="navbar">
    <div class="dropdown">
      <button class="dropbtn">Movie Management</button>
      <div class="dropdown-content">
        <a href="/">Movie Addition</a>
        <a href="/">Movie Update</a>
        <a href="/">Movie Deletion</a>
        <a href="/">Movie Reports</a>
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
        <a href="/">Showtime Addition</a>
        <a href="/">Showtime Update</a>
        <a href="/">Showtime Deletion</a>
        <a href="/">Showtime Report</a>
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

    <a href="/logout" class="logout-btn">Logout</a>
  </div>
</div>

</body>
</html>
