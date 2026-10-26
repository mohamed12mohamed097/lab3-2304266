document.getElementById("register-form").addEventListener("submit", function (e) {
    const name = document.getElementById("name").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value;
    const confirm = document.getElementById("confirm_password").value;

    const errors = {};
    if (name === "") errors.name = "Name is required";
    if (email === "") errors.email = "Email is required";
    if (password === "") errors.password = "Password is required";
    if (confirm === "") errors.confirm_password = "Confirm password is required";
    else if (password !== "" && password !== confirm) errors.confirm_password = "Passwords do not match";

    ["name", "email", "password", "confirm_password"].forEach(function (field) {
        document.getElementById("error-" + field).textContent = errors[field] || "";
    });

    if (Object.keys(errors).length > 0) {
        e.preventDefault();
    }
});