<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Directory</title>
<link rel="stylesheet" href="../static/css/style.css">
</head>
<body>

<header class="header">
  <h1>Employee Directory</h1>
  <div class="search-bar">
    <form method="get">
      <input type="text" name="search" placeholder="Search by name or email" value="${search!}">
      <button type="submit">Filter</button>
    </form>
  </div>
</header>

<div class="controls">
  <div>
    Sort:
    <form method="get" style="display:inline;">
      <select name="sort" onchange="this.form.submit()">
        <option value="">-- Select --</option>
        <option value="firstName" <#if sort=="firstName">selected</#if>>First Name</option>
        <option value="department" <#if sort=="department">selected</#if>>Department</option>
      </select>
    </form>
    Show:
    <form method="get" style="display:inline;">
      <select name="itemsPerPage" onchange="this.form.submit()">
        <option value="10" <#if itemsPerPage==10>selected</#if>>10</option>
        <option value="25" <#if itemsPerPage==25>selected</#if>>25</option>
        <option value="50" <#if itemsPerPage==50>selected</#if>>50</option>
        <option value="100" <#if itemsPerPage==100>selected</#if>>100</option>
      </select>
    </form>
  </div>
  <a href="form.ftl" class="add-btn">Add Employee</a>
</div>

<div id="employee-list-container" class="employee-list">
<#if employees?? && employees?size gt 0>
  <#list employees as employee>
    <div class="employee-card">
      <h3>${employee.firstName} ${employee.lastName}</h3>
      <p>Email: ${employee.email}</p>
      <p>Department: ${employee.department}</p>
      <p>Role: ${employee.role}</p>
      <a href="form.ftl?id=${employee.id}" class="edit-btn">Edit</a>
      <a href="delete?id=${employee.id}" class="delete-btn">Delete</a>
    </div>
  </#list>
<#else>
  <p>No employees found.</p>
</#if>
</div>

<footer>
  &copy; 2025 Employee Directory App. All rights reserved.
</footer>

</body>
</html>
