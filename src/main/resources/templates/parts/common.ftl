<#macro page>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sonoon.KG</title>
    <link rel="shortcut icon" href="/static/Bomb.png" type="image/png">
    <link rel="stylesheet" href="/static/style.css">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <style>
    body
    {
        background-image: url(static/alay.jpg);
        width: 100%;
        height: 100%;
        margin: 0;
        padding: 0;
        color: #a00909;
        font-style: italic;
        font-weight:bold;
        font-family:"courier";
        font-size:110%;
    }
        .is_overlay{
     display: block;
     width: 100%;
     height: 100%;
     }
    #trailer {
	position: fixed;
	top: 0; right: 0; bottom: 0; left: 0;
	overflow: hidden;
}
    #trailer > video {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>

<div id="trailer" class="is_overlay">
	<video id="video" width="100%" height="auto" autoplay="autoplay" loop="loop" preload="auto">
		<source src="static/kyrgyzstan.mp4"></source>
		<source src="book.webm" type="video/webm"></source>
	</video>
</div>

<#include "navbar.ftl">
<div class="container mt-5">
<#nested>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
</#macro>
