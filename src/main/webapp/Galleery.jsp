<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="components/CSS.jsp" %>
<link rel="stylesheet "href="index.css">
<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.container{
  height: auto;
  padding: 2%;
  background-color: #353b48;
  display: grid;
  grid-template-columns: repeat(3,200px);
  justify-content: center;
  align-content: center;
  gap: 16px;
}


.img{
  width: 200px;
  height: 200px;
  object-fit: cover;
  object-position: center center;
  background-color: #fff;
  padding: 5px;
  border-radius: 3px;
}

#modal{
  background-color: rgba(255,255,255,0.5);
  position: fixed;
  top: 0;
  width: 100%;
  height: 100%;
  backdrop-filter: blur(2px);
  display: none;
}


#modal.active{
  display: grid;
  place-items: center;
}

#img{
  max-width: 80%;
  max-height: 80%;
  border: 4px solid white;
  box-shadow: 1px 3px 20px rgba(0,0,0,0.5);
}
    </style>
</head>
 <body>
 
<%@include file = "NAVBAR.jsp" %>
    <div class="container">
      <img class='img' src="images/ab.jpg">
      <img class='img' src="images/b1.jpg">
      <img class='img' src="images/b2.jpg">
      <img class='img' src="images/b3.jpg">
      <img class='img' src="images/ab.jpg">
      <img class='img' src="images/b1.jpg">
      <img class='img' src="images/b2.jpg">
      <img class='img' src="images/ab.jpg">
      <img class='img' src="images/b1.jpg">
      <img class='img' src="images/b2.jpg">
      <img class='img' src="images/b3.jpg">
      <img class='img' src="images/ab.jpg">
      <img class='img' src="images/b1.jpg">
      <img class='img' src="images/b2.jpg">
      <img class='img' src="images/ab.jpg">
      <img class='img' src="images/b1.jpg">
      <img class='img' src="images/b2.jpg">
      <img class='img' src="images/b3.jpg">
      <img class='img' src="images/ab.jpg">
      <img class='img' src="images/b1.jpg">
      <img class='img' src="images/b2.jpg">
    </div>
  </body>
  <script>
    const modal=document.createElement('div');
modal.id='modal';
document.body.appendChild(modal);

const images=document.querySelectorAll('.img');


images.forEach(image=>{
  image.addEventListener('click',()=>{
    modal.classList.add('active');
    const img=document.createElement('img');
    img.src=image.src;
    img.id="img";
    while(modal.firstChild){
      modal.removeChild(modal.firstChild);
    }
    modal.append(img);
  });
});

modal.addEventListener('click',()=>{
  modal.classList.remove('active');
});
  </script>
</html>