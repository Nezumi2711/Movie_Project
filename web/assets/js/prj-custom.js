let category = document.querySelector("#exampleFormControlSelect1");
let genre = document.querySelector("#exampleFormControlSelect2");
let firstGenre = genre.querySelector("option:nth-child(2)");
let secondGenre = genre.querySelector("option:nth-child(3)");
let thirdGenre = document.createElement("option");
thirdGenre.innerHTML = "Cartoon";
thirdGenre.value = "cartoon";

const changeGenreFollowCategory = (value) => {
   if (value === "tv") {
      firstGenre.innerHTML = "Reality show";
      secondGenre.innerHTML = "Game show";
      firstGenre.value = "reality";
      secondGenre.value = "game";
      genre.removeChild(thirdGenre);
   } else {
      firstGenre.innerHTML = "Action";
      secondGenre.innerHTML = "Dramatic";
      firstGenre.value = "action";
      secondGenre.value = "dramatic";
      genre.appendChild(thirdGenre);
   }
};

category.onchange = (e) => {
   changeGenreFollowCategory(e.target.value);
};

