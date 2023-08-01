<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>MUDHALIYAR MATRIMONY</title>
<%@include file="components/CSS.jsp" %>
<link rel="stylesheet "href="index.css">
  <style>

*{
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    font-family: 'Roboto',sans-serif;
}
.heading{
    width: 90%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    text-align: center;
    margin: 20px auto;
}
.heading h1{
    font-size: 50px;
    color: #000;
    margin-bottom:25px;
    position: relative;
}
.heading h1::after{
    content: "";
    position: absolute;
    width:100%;
    height:4px;
    display:block;
    margin:0 auto;
    background-color:#4caf50;
}
.heading p{
    font-size:18px;
    color:#666;
    margin-bottom: 35px;

}
.container2{
    width: 90%;
    margin:0 auto;
    padding:10px 20px;
}

.about{
    display:flex;
    justify-content: space-between;
    align-items:center;
    flex-wrap:wrap;
}
.about-image{
    flex:1;
    margin-right:40px;
    overflow: hidden;
}
.about-image img{
    max-width: 100%;
    height:auto;
    display: block;
    transition:0.5s ease;
}
.about-image:hover img{
    transform:scale(1.2);
}
.about-content{
    flex:1;
}
.about-content h2{
    font-size:23px;
    margin-bottom:15px;
    color:#333;
}
.about-content p{
    font-size: 18px;
    line-height: 1.5;
    color: #666;
}
@media screen and (max-width:768px){
    .heading{
        padding:0px 20px;
    }
    .heading h1{
        font-size:36px;
        margin-bottom:0px;
    }
    .container2{
        padding:0px;
    }
    .about{
        padding:20px;
        flex-direction: column;
    }
    .para{
      padding-top: 10px;
    }
    .about-image{
        margin-right:0px;
        margin-bottom:20px;
    }
    .about-content p{
        padding:10px;
        font-size: 16px;
    }
    .about-us{
  }
}


    body{
	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);
	background-image: linear-gradient(to top, #62f787 0%, #c6e948 100%);
    
  
}

.container1{
    padding: 3rem;
    
    
}
.slider-wrapper{
    position: relative;
    max-width: 80rem;
    margin:0 auto;

}
.slider{
    display: flex;
    aspect-ratio: 16/9;
    overflow-x:auto;
    scroll-snap-type: x mandatory;
    scroll-behavior: smooth;
    box-shadow: 0 2rem 3rem -0.75rem hsla(0,0%,0%,25%);
    border-radius: 0.5rem;-ms-overflow-style: none;
    scrollbar-width: none;
}
.slider::-webkit-scrollbar{
    display: none;
}
.slider img{
    flex: 1 0 100%;
    scroll-snap-align: start;
    object-fit: fill;

}
.slider-nav{
    display: flex;
    column-gap: 1rem;
    position: absolute;
    bottom: 1.25rem;
    left: 50%;
    transform: translateX(-50%);
    z-index: 1;
}
.slider-nav a{
    width:0.5rem;
    height:0.5rem;
    border-radius:50%;
    background-color: #fff;
    opacity: 0.75;
    transition: opacity ease 250ms;
}
.slider-nav a:hover{
    opacity: 1.5;
}

/* ------------------------------------------For the gallery ---------------------------------------------------------------------------------------------------------------------------------------*/
.thewholeclass {
  box-sizing: border-box;
}

.body1 {
  margin: 50;
  font-family: 'Asap', 'Poppins', sans-serif;
  text-shadow: #000 0 0 10px;
}

.container3 {
  display: flex;
  flex-direction: column;
  width: 100vw;
  height: 50vh;
  background: #111;
  
  @media (min-width: 1024px) {
    flex-direction: row;
    max-width:95vw;
    margin:0;
  }
}

.item {
  position: relative;
  flex: calc(100vw / 6) 1 1;
  background-size: cover;
  overflow: hidden;
  filter: saturate(90%);
  transition: 1s;
}

.item:before {
  content: "";
  position: absolute;
  inset: 0;
  background: linear-gradient(25deg, rgba(0,0,0,.9), rgba(0,0,0,0));
}

.item:not(:last-child) {
  border-bottom: 1px solid #ccc;
  animation: borderPulse 5s infinite;
  
  @media (min-width: 1024px) {
    border-right: 1px solid #ccc;
    border-bottom: none;
  }
}

.item:hover {
  flex-basis: 40%;
  filter: saturate(120%);
  
  @media (min-width: 1024px) {
    flex-basis: 75%;
  }
  
  .quote {
    opacity: 1;
    transform: translateX(0);
  }
}

.item:nth-child(1) {
  background-image: url("images/ab.jpg");
  background-position: 72% 35%;
}

.item:nth-child(2) {
  background-image: url("images/b1.jpg");
  background-position: 60% 8%;
}

.item:nth-child(3) {
  background-image: url("images/b2.jpg");
  background-position: 52% 8%;
}

.item:nth-child(4) {
  background-image: url("images/b3.jpg");
  background-position: 45% 8%;
}

.item:nth-child(5) {
  background-image: url("images/i1.jpeg");
  background-position: 45% 25%;
}

.item:nth-child(6) {
  background-image: url("images/i3.jpeg");
  background-position: 65% 2%;
}

.quote {
  position: absolute;
  color: #fff;
  bottom: 35%;
  left: 5rem;
  width: calc(100% - 10rem);
  opacity: 0;
  transition: 1s;
  transform: translateX(50%);
  
  @media (min-width: 512px) {
    left: 15%;
    bottom: 35%;
    width: 20vw;
  }
  
  @media (min-width: 1024px) {
    left: 15%;
    bottom: 35%;
    width: 30vw;
  }
  
  .para1 {
    position: relative;
    display: inline-block;
    margin-bottom: 1.7rem;
    font-size: 1.4rem;
    text-wrap: balance;
    font-style: italic;
    
    &:before, &:after {
      position: absolute;
      font-size: 5.5rem;
      opacity: .6;
    }
    
    &:before {
      content: "";
      top: 4rem;
      left: -2rem;
      transform: translate(-100%, -100%);
    }
    
    &:after {
      content: "”";
      bottom: 2rem;
      right: -2rem;
      transform: translate(100%, 100%);
    }
  }
  
  .span {
    position: absolute;
    bottom: -2rem;
    right: 0;
    text-align: right;
    font-size: 1.2rem;
    font-weight: bold;
    transform: translate(4rem, 100%);
    
    &:before {
      content: "—";
      margin-right: .7rem;
    }
  }
}

@keyframes borderPulse{
  0%, 100% { border-color: rgba(204, 204, 204, 1); }
  25%, 75% { border-color: rgba(204, 204, 255, 0.9); }
  50% { border-color: rgba(204, 204, 255, 0.5); }
}

     </style>



</head>
<body >
<%@include file = "NAVBAR.jsp" %>

<div class="row">
<div class="col-md-2">
<img class="mt-5 mx-4 rounded" style="width:200px;height:490px" alt="" src="Photos/add.jfif">

</div>
<div class="col-md-8">
<section  class="container-sm pt-5">    
      <div class="slider-wrapper">
            <div class="slider">
                <img id="slide-1" src="images/b1.jpg" alt="sample image">
                <img id="slide-2" src="images/b2.jpg" alt="sample image">
                <img id="slide-3" src="images/b3.jpg" alt="sample image">
                <img id="slide-4" src="images/ab.jpg"alt="sample image"> 
            </div>
            <div class="slider-nav">
                <a href="#slide-1" id="radio1"></a>
                <a href="#slide-2" id="radio2"></a>
                <a href="#slide-3" id="radio3"></a>
                <a href="#slide-4" id="radio4"></a>
            </div>
        </div>
 </section>

</div>
<div class="col-md-2">
<img class="mt-5  rounded" style="width:200px;height:490px; margin-left:-20px" alt="" src="Photos/add.jfif">

</div>
</div>
    
     <div class="container">
      
   
    <div class="heading">
        <h1>About Us</h1>
        <p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero voluptate iusto nam suscipit accusamus, pariatur dolores itaque rerum, maxime sed earum, ullam repudiandae soluta ipsa voluptatem distinctio? Natus, illum tempore!</p>
        </div>
        <div class="container2">
            <section class="about">
                <div class="about-image">
                    <img class="rounded" src="images/ab.jpg">
                </div>
                <div class="about-content">
                    <h2>Sangam</h2>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quasi alias qui aut nisi praesentium enim quos repudiandae ipsa doloremque, asperiores architecto beatae consequuntur quae impedit quaerat, nostrum, corporis ullam. Excepturi.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quasi alias qui aut nisi praesentium enim quos repudiandae ipsa doloremque, asperiores architecto beatae consequuntur quae impedit quaerat, nostrum, corporis ullam. Excepturi.</p>
                </div>
            </section>
        </div>
        </div>
   
    <br>
    <br>
    <div class="heading">
        <h1>Gallery</h1>
        </div>
    <div class="body1">
    <div class="thewholeclass">
        <a href="Galleery.jsp">
        <div class="container3">
            <div class="item">
              <div class="quote">
                <p class="para1">Mogappair Mudhaliyar Sangam</p>
              </div>
            </div>
            <div class="item">
              <div class="quote">
                <p class="para1">Sangam Meet</p>
              </div>
            </div>
            <div class="item">
              <div class="quote">
                <p class="para1">Banner</p>
              </div>
            </div>
            <div class="item">
              <div class="quote">
                <p class="para1">Conference</p>
              </div>
            </div>
            <div class="item">
              <div class="quote">
                <p class="para1">Meetup</p>
              </div>
            </div>
            <div class="item">
              <div class="quote">
                <p class="para1">Corporation Work</p>
              </div>
            </div>
          </div>
          </a>
      </div>
    </div>
    
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const slider = document.querySelector('.slider');
            const slideNav = document.querySelectorAll('.slider-nav a');
            let counter = 1;
            let intervalId;
    
            function showSlide(slideNumber) {
                const activeSlide = document.getElementById('slide-' + slideNumber);
                slider.scrollTo({
                    left: activeSlide.offsetLeft,
                    behavior: 'smooth'
                });
            }
    
            function updateSlideNav(slideNumber) {
                slideNav.forEach(navItem => {
                    navItem.classList.remove('active');
                });
                const activeNav = document.getElementById('radio' + slideNumber);
                activeNav.classList.add('active');
            }
    
            function startSlideShow() {
                intervalId = setInterval(function() {
                    counter++;
                    if (counter > 4) {
                        counter = 1;
                    }
                    showSlide(counter);
                    updateSlideNav(counter);
                }, 2000);
            }
    
            function stopSlideShow() {
                clearInterval(intervalId);
            }
    
            slider.addEventListener('mouseenter', function() {
                stopSlideShow();
            });
    
            slider.addEventListener('mouseleave', function() {
                startSlideShow();
            });
    
            startSlideShow();
        });
    </script>

    




</body>
</html>