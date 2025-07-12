# Employee Directory

A simple, responsive Employee Directory web application built with HTML, CSS, and JavaScript. Data is stored in-memory with a JavaScript array — no backend required.

---

## 🚀 Features

- 📋 List employees with their details (name, email, department, role)
- 🔎 Search employees by name or email
- 🎯 Filter employees by first name, department, or role
- ➕ Add new employees
- ✏️ Edit employee (basic placeholder implemented)
- ❌ Delete employees
- 📐 Responsive layout
- 📝 Form validation (required fields & email format)
- Simple sorting and pagination UI (partial — requires implementation)

---

## 📁 Project Structure

```
├── dashboard.ftlh / dashboard.html     # Dashboard page template
├── add-edit-form.ftlh / form.html      # Add/Edit Employee form template
├── static/
│   ├── css/
│   │   ├── style.css                   # Main stylesheet (pick one)
│   │   └── styles.css                  # Alternative stylesheet
│   ├── js/
│   │   ├── app.js                      # JS for dashboard page
│   │   ├── data.js                     # Sample employee data
│   │   └── form.js                     # JS for add/edit form page (if implemented)
└── README.md
```

---

## 🖥️ Setup

### Local Testing

1️⃣ Rename `dashboard.ftlh` to `dashboard.html` and `add-edit-form.ftlh` to `form.html` for testing locally.

2️⃣ Open `dashboard.html` in your browser.

### With Freemarker & Tomcat (optional)

- Deploy `.ftlh` templates to a server with [Apache FreeMarker](https://freemarker.apache.org/) and Tomcat for dynamic rendering.

---

## 📄 Notes

- Employee data is stored in the `employees` array in `data.js`.
- Changes (add/edit/delete) are **not persisted** — the data resets when you refresh.
- Edit functionality is currently a placeholder (shows an alert).

---

## 📋 To Do

✅ Implement proper edit functionality (currently not fully implemented).\
✅ Enhance sorting and pagination logic.\
✅ Connect to a backend/database if persistence is desired.

---

## 📜 License

MIT License — feel free to use and modify.

---

## 📧 Contact

For questions or suggestions, open an issue or contact the developer.

---

Enjoy managing your employee directory! 🚀

