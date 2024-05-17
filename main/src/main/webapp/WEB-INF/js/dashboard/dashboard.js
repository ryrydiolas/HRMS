
function toggleMenu() {
	const navbar = document.getElementById('navbar');
	const bodypadding = document.getElementById('body-pd');

	if (navbar) {
		navbar.classList.toggle('expander');
	}

	if (bodypadding) {
		bodypadding.classList.toggle('body-pd');
	}
}

function logout() {
    var confirmation = confirm("Are you sure you want to logout?");
    if (confirmation) {
        window.location.href = "/main";
    }
}

function toggleSubMenuEA() {
	var submenu = document.querySelector('.collapse__menuEA');
	if (submenu.style.display === "none" || submenu.style.display === "") {
		submenu.style.display = "block";
	} else {
		submenu.style.display = "none";
	} 
}

function toggleSubMenuRD() {
	var submenu = document.querySelector('.collapse__menuRD');
	if (submenu.style.display === "none" || submenu.style.display === "") {
		submenu.style.display = "block";
	} else {
		submenu.style.display = "none";
	} 
}

function toggleSubMenuYD() {
	var submenu = document.querySelector('.collapse__menuYD');
	if (submenu.style.display === "none" || submenu.style.display === "") {
		submenu.style.display = "block";
	} else {
		submenu.style.display = "none";
	} 
}

function toggleSubMenuSched() {
	var submenu = document.querySelector('.collapse__menuSched');
	if (submenu.style.display === "none" || submenu.style.display === "") {
		submenu.style.display = "block";
	} else {
		submenu.style.display = "none";
	} 
}


