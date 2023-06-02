document.addEventListener("DOMContentLoaded", function () {
  let randomButton = document.getElementById("randomButton");
  let court1 = document.querySelector(".court1");

  randomButton.addEventListener("click", function () {
    // Make an AJAX request to retrieve the random users
    fetch("/session/random?count=4")
      .then((response) => response.json())
      .then((data) => {
        // Render the randomly selected users in the container
        randomUsersContainer.innerHTML = "";
        data.forEach(function (user) {
          var userElement = document.createElement("p");
          userElement.textContent = user.name;
          randomUsersContainer.appendChild(userElement);
        });
      })
      .catch((error) => console.error(error));
  });
});
