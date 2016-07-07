console.log("The script is running!!!")

//=========================

document.body.style.backgroundColor = "pink"

function addPurpleBorder() {
	var photo = document.getElementById("puppy")
	photo.style.border = "10px solid purple";
	}

var photo = document.getElementById("puppy")
photo.addEventListener("click", addPurpleBorder)

