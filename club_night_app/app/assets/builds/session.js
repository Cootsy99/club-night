(() => {
  // app/javascript/session.js
  document.addEventListener("DOMContentLoaded", function() {
    let randomButton = document.getElementById("randomButton");
    let court1 = document.querySelector(".court1");
    randomButton.addEventListener("click", function() {
      fetch("/session/random?count=4").then((response) => response.json()).then((data) => {
        randomUsersContainer.innerHTML = "";
        data.forEach(function(user) {
          var userElement = document.createElement("p");
          userElement.textContent = user.name;
          randomUsersContainer.appendChild(userElement);
        });
      }).catch((error) => console.error(error));
    });
  });
})();
//# sourceMappingURL=assets/session.js.map
