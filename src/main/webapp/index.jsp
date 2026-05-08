<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gallery Image Manager</title>

<style>

body{
    font-family: Arial;
    background:#f2f2f2;
    text-align:center;
}

.container{
    width:90%;
    margin:auto;
}

.gallery{
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
}

.card{
    background:white;
    width:250px;
    margin:15px;
    padding:15px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}

.card img{
    width:100%;
    height:200px;
    border-radius:10px;
}

button{
    padding:10px;
    border:none;
    background:#007bff;
    color:white;
    border-radius:5px;
    cursor:pointer;
}

</style>

</head>
<body>

<div class="container">

<h1>Gallery Image Manager</h1>
<input type="file" id="imageInput">

<button onclick="addImage()">
Add Photo
</button>

<br><br>

<div class="gallery">

<div class="card">

<img src="sample/sample1.jpg">

<h3>Nature Image</h3>

<p>Size : 2.5 MB</p>

<p>Date : 08-05-2026</p>

<a href="sample/sample1.jpg" target="_blank">
<button>View</button>
</a>

<button onclick="this.parentElement.style.display='none'">
Delete
</button> 

</div>

<div class="card">

<img src="sample/sample2.jpg">

<h3>Mountain Image</h3>

<p>Size : 1.8 MB</p>

<p>Date : 08-05-2026</p>

<a href="sample/sample2.jpg" target="_blank">
<button>View</button>
</a>

<button onclick="this.parentElement.style.display='none'">
Delete
</button>

</div>

<div class="card">

<img src="sample/sample3.jpg">

<h3>Forest Image</h3>

<p>Size : 3.1 MB</p>

<p>Date : 08-05-2026</p>

<a href="sample/sample3.jpg" target="_blank">
<button>View</button>
</a>

<button onclick="this.parentElement.style.display='none'">
Delete
</button>
</div>

</div>

</div>
<script>

function addImage() {

    let input = document.getElementById("imageInput");

    let file = input.files[0];

    if(file){

        let imageURL = URL.createObjectURL(file);

        let gallery = document.querySelector(".gallery");

        let card = document.createElement("div");

        card.className = "card";

        card.innerHTML =
        "<img src='" + imageURL + "'>" +

        "<h3>" + file.name + "</h3>" +

        "<p>Size : " + (file.size / 1024).toFixed(2) + " KB</p>" +

        "<p>Date : " + new Date().toLocaleDateString() + "</p>" +

        "<button onclick=\"window.open('" + imageURL + "')\">View</button>" +

        "<button onclick=\"this.parentElement.remove()\">Delete</button>";

        gallery.appendChild(card);
    }
}

</script>
</body>
</html>