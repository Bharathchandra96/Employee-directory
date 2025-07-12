document.addEventListener("DOMContentLoaded", () => {
  if (document.getElementById("employeeList")) {
    renderEmployees(employees);
  }
});

function renderEmployees(list) {
  const container = document.getElementById("employeeList");
  container.innerHTML = "";
  list.forEach(emp => {
    const card = document.createElement("div");
    card.className = "employee-card";
    card.innerHTML = `
      <h3>${emp.firstName} ${emp.lastName}</h3>
      <p><strong>Email:</strong> ${emp.email}</p>
      <p><strong>Department:</strong> ${emp.department}</p>
      <p><strong>Role:</strong> ${emp.role}</p>
      <button onclick="editEmployee(${emp.id})">Edit</button>
      <button onclick="deleteEmployee(${emp.id})">Delete</button>
    `;
    container.appendChild(card);
  });
}

function applySearch() {
  const term = document.getElementById("searchInput").value.toLowerCase();
  const filtered = employees.filter(e =>
    e.firstName.toLowerCase().includes(term) ||
    e.lastName.toLowerCase().includes(term) ||
    e.email.toLowerCase().includes(term)
  );
  renderEmployees(filtered);
}

function applyFilters() {
  const fname = document.getElementById("filterFirstName").value.toLowerCase();
  const dept = document.getElementById("filterDepartment").value.toLowerCase();
  const role = document.getElementById("filterRole").value.toLowerCase();
  const filtered = employees.filter(e =>
    (fname === "" || e.firstName.toLowerCase().includes(fname)) &&
    (dept === "" || e.department.toLowerCase().includes(dept)) &&
    (role === "" || e.role.toLowerCase().includes(role))
  );
  renderEmployees(filtered);
}

function resetFilters() {
  document.getElementById("filterFirstName").value = "";
  document.getElementById("filterDepartment").value = "";
  document.getElementById("filterRole").value = "";
  renderEmployees(employees);
}

function goToAdd() {
  window.location.href = "add-edit-form.html";
}

function saveEmployee(e) {
  e.preventDefault();
  const newEmp = {
    id: employees.length + 1,
    firstName: document.getElementById("firstName").value,
    lastName: document.getElementById("lastName").value,
    email: document.getElementById("email").value,
    department: document.getElementById("department").value,
    role: document.getElementById("role").value
  };
  employees.push(newEmp);
  window.location.href = "dashboard.html";
}

function cancelForm() {
  window.location.href = "dashboard.html";
}

function editEmployee(id) {
  alert("Edit functionality not fully implemented for demo.");
}

function deleteEmployee(id) {
  const idx = employees.findIndex(e => e.id === id);
  if (idx !== -1) {
    employees.splice(idx, 1);
    renderEmployees(employees);
  }
}