let sidebar = document.querySelector(".sidebar");
let closeBtn = document.querySelector("#btn");
let searchBtn = document.querySelector(".bx-search");

closeBtn.addEventListener("click", () => {
    sidebar.classList.toggle("open");
    menuBtnChange();
});

searchBtn.addEventListener("click", () => {
    sidebar.classList.toggle("open");
    menuBtnChange();
});


function menuBtnChange() {
    if (sidebar.classList.contains("open")) {
        closeBtn.classList.replace("fi fi-rr-menu-burger");
    } else {
        closeBtn.classList.replace("fi fi-rr-menu-burger");
    }
}