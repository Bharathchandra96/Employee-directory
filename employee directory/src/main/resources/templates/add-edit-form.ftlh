<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add/Edit Employee</title>
<link rel="stylesheet" href="../static/css/style.css">
<script defer src="../static/js/data.js"></script>
<script defer src="../static/js/app.js"></script>
</head>
<body>
<header><h1>Add Employee</h1></header>

<form id="employeeForm" onsubmit="saveEmployee(event)">
  <input type="text" id="firstName" placeholder="First Name" required>
  <input type="text" id="lastName" placeholder="Last Name" required>
  <input type="email" id="email" placeholder="Email" required>
  <input type="text" id="department" placeholder="Department" required>
  <input type="text" id="role" placeholder="Role" required>

  <div class="form-buttons">
    <button type="button" onclick="cancelForm()">Cancel</button>
    <button type="submit" class="green-btn">Add</button>
  </div>
</form>

<footer>&copy; 2025 Employee Directory App. All rights reserved.</footer>
</body>
</html>