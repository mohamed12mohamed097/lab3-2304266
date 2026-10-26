document.getElementById("login-form").addEventListener("submit", function (e) {
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value;

    const errors = {};
    if (email === "") errors.email = "Email is required";
    if (password === "") errors.password = "Password is required";

    ["email", "password"].forEach(function (field) {
        document.getElementById("error-" + field).textContent = errors[field] || "";
    });
    document.getElementById("error-login").textContent = "";

    if (Object.keys(errors).length > 0) {
        e.preventDefault();
    }
});