// Write your JavaScript code here
const banner = document.getElementById("banner")
const loginContainer = document.getElementById("login-container")
const signupContainer = document.getElementById("signup-container")
const loginToggle = document.getElementById("login-form-toggler")
const signupToggle = document.getElementById("signup-form-toggler")

signupToggle.addEventListener('click', () => {
	banner.style.transform = "translateX(-100%)";
	loginContainer.style.transform = "scale(0)";
	signupContainer.style.transform = "scale(1)"
})
loginToggle.addEventListener('click', () => {
	banner.style.transform = "translateX(0%)"
	signupContainer.style.transform = "scale(0)"
	loginContainer.style.transform = "scale(1)"
})

function submitAuthentication(event) {
    // Prevent default form submission
    event.preventDefault();

    // Get form data
    var formData = {
        username: $("input[name='username']").val(),
        password: $("input[name='password']").val()
    };

    // Store the username in session storage
    sessionStorage.setItem('username', formData.username);

    // Send AJAX request to the server
    $.ajax({
        type: "POST",
        url: "/main/login",
        data: formData,
        success: function(response) {
            // Handle successful authentication
            window.location.href = "/main/dashboard"; // Redirect to dashboard
            alert("WELCOME TO HRMS" + " " +  formData.username);
        },
        error: function(xhr, status, error) {
            // Handle authentication error
            alert("Authentication failed. Please check your username and password.");
        }
    });
}

