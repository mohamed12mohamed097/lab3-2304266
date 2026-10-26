function checkTitle(title) {
    if (title.trim() === "") return "Title is required";
    if (title.trim().length > 200) return "Title is too long (200 characters at most)";
    return "";
}

document.getElementById("add-form").addEventListener("submit", function (e) {
    const message = checkTitle(document.getElementById("title").value);
    document.getElementById("error-title").textContent = message;
    if (message !== "") e.preventDefault();
});

document.querySelectorAll(".edit-form").forEach(function (form) {
    form.addEventListener("submit", function (e) {
        const message = checkTitle(form.querySelector("input[name=title]").value);
        if (message !== "") {
            e.preventDefault();
            alert(message);
        }
    });
});

document.querySelectorAll(".delete-form").forEach(function (form) {
    form.addEventListener("submit", function (e) {
        if (!confirm("Are you sure you want to delete this to-do?")) {
            e.preventDefault();
        }
    });
});