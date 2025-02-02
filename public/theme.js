const toggleButton = document.getElementById("toggle-theme-btn");
let currentTheme = localStorage.getItem("theme") || "light";
let fontSize = parseInt(localStorage.getItem("fontSize")) || 16;

const setTheme = (theme) => {
    document.body.classList.toggle("bg-dark", theme === "dark");
    document.body.classList.toggle("text-light", theme === "dark");
    document.body.classList.toggle("light-mode", theme === "light");

    document.querySelector(".table").classList.toggle("table-dark", theme === "dark");
    document.querySelector(".pagination").classList.toggle("pagination-dark", theme === "dark");

    localStorage.setItem("theme", theme);
    toggleButton.innerHTML = theme === "dark" ? '<i class="fas fa-sun"></i>' : '<i class="fas fa-moon"></i>';
};

const setFontSize = (size) => {
    document.body.style.fontSize = `${size}px`;
    localStorage.setItem("fontSize", size);
};

setTheme(currentTheme);
setFontSize(fontSize);

toggleButton.addEventListener("click", () => {
    currentTheme = currentTheme === "dark" ? "light" : "dark";
    setTheme(currentTheme);
});

document.getElementById("increase-font-btn").addEventListener("click", () => {
    setFontSize(fontSize += 2);
});

document.getElementById("decrease-font-btn").addEventListener("click", () => {
    setFontSize(fontSize -= 2);
});
