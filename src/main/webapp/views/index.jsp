<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.car.model.car"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental Pune</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
<style type="text/css">
    * {
  box-sizing: border-box;
}

body {
  margin: 0px;
  font-family: 'segoe ui';
}

.nav {
  height: 70px;
  width: 100%;
  background-color: #4d4d4d;
  position: relative;
}

.nav > .nav-header {
  display: inline;
}
.nav > .nav-header > .nav-title {
    display: inline-block;
    font-size: 30px;
    color: #fff;
    padding: 14px 11px 12px 57px;
}

.nav > .nav-btn {
  display: none;
}

.nav > .nav-links {
    display: inline;
    float: right;
    font-size: 22px;
    /* margin: auto; */
    padding: 5px;
}

.nav > .nav-links > a {
  display: inline-block;
  padding: 13px 10px 13px 10px;
  text-decoration: none;
  color: #efefef;
}

.nav > .nav-links > a:hover {
  background-color: rgba(0, 0, 0, 0.3);
}

.nav > #nav-check {
  display: none;
}

@media (max-width:600px) {
  .nav > .nav-btn {
    display: inline-block;
    position: absolute;
    right: 0px;
    top: 0px;
  }
  
  .nav > .nav-btn > label {
    display: inline-block;
    width: 50px;
    height: 50px;
    padding: 13px;
  }
  .nav > .nav-btn > label:hover,.nav  #nav-check:checked ~ .nav-btn > label {
    background-color: rgba(0, 0, 0, 0.3);
  }
  .nav > .nav-btn > label > span {
    display: block;
    width: 25px;
    height: 10px;
    border-top: 2px solid #eee;
  }
  .nav > .nav-links {
    position: absolute;
    display: block;
    width: 100%;
    background-color: #333;
    height: 0px;
    transition: all 0.3s ease-in;
    overflow-y: hidden;
    top: 50px;
    left: 0px;
  }
  .nav > .nav-links > a {
    display: block;
    width: 100%;
  }
  .nav > #nav-check:not(:checked) ~ .nav-links {
    height: 0px;
        margin-top: 19px;
  }
 .nav > #nav-check:checked ~ .nav-links {
    height: calc(38vh - 50px);
    overflow-y: auto;
    display: flex;
    justify-content: center;
    flex-direction: column;
    text-align: center;
    font-size: 28px;
}
}

    /* IMAGE SLIDER */
    
  .slider-container {
    position: relative;
    width: 100%;
  }
  
  .slider {
    display: flex;
    overflow: hidden;
  }
  
  .slide {
    width: 100%;
    height: 66vh;
    justify-content: center;
    margin-left: auto;
    /* padding: 12px; */
    margin-right: auto;
    margin-top: 0px;
}
  .dots-container {
    position: absolute;
    bottom: 10px;
    left: 50%;
    transform: translateX(-50%);
  }
  
  .dot {
    width: 10px;
    height: 10px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    margin: 0 5px;
    cursor: pointer;
  }
  
  .active {
    background-color: #333;
  }
  
  /* Styles for mobile and tablets */
  @media only screen and (max-width: 1023px) {
   
   .slider-container {
    position: unset;
    width: 100%;
}
    .slide {
      width: 100%;
      height: 30vh;
      justify-content: center;
      margin-left: auto;
      margin-right: auto;
      margin-top: 15%;
      padding-bottom: 0px;
  }
  
  }
      /* ADMIN POPUP LOGIN */
      
      .container {
  transform-origin: center;
}
.show-btn:active {
  scale: 0.9;
}
input[type="checkbox"] {
  display: none;
}
.container {
  scale: 0;
  opacity: 0;
  z-index: -1;
  background: #fff;
  width: 410px;
  padding: 30px;
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}
#show:checked ~ .container {
  scale: 1;
  opacity: 1;
  z-index: 11;
}
.container .close-btn {
position : absolute;
  right: 20px;
  top: 15px;
  font-size: 18px;
  cursor: pointer;
}
.container .close-btn:hover {
  color: #3498db;
}
.container .text {
  font-size: 35px;
  font-weight: 600;
  text-align: center;
}
.container form {
  margin-top: -20px;
  transition: all 0.3s ease;
}
.container form .data {
  height: 45px;
  width: 100%;
  margin: 40px 0;
}
form .data label {
  font-size: 18px;
}
form .data input {
  height: 100%;
  width: 100%;
  padding-left: 10px;
  font-size: 17px;
  border: 1px solid silver;
}
form .data input:focus {
  border-color: #3498db;
  border-bottom-width: 2px;
}
form .forgot-pass {
  margin-top: -8px;
}
form .forgot-pass a {
  color: #3498db;
  text-decoration: none;
}
form .forgot-pass a:hover {
  text-decoration: underline;
}
form .btn {
  margin: 30px 0;
  height: 45px;
  width: 100%;
  position: relative;
  overflow: hidden;
}
form .btn .inner {
  height: 100%;
  width: 300%;
  position: absolute;
  left: -100%;
  z-index: -1;
  transition: all 0.4s;
}
form .btn:hover .inner {
  left: 0;
}
form .btn button {
  height: 100%;
  width: 100%;
  background: none;
  border: none;
  color: #fff;
  background: #11131e;
  font-size: 18px;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 1px;
  cursor: pointer;
  border-radius: 8px;
  overflow: hidden;
}
form .signup-link {
  text-align: center;
}
form .signup-link a {
  color: #3498db;
  text-decoration: none;
}
form .signup-link a:hover {
  text-decoration: underline;
}
.center {
    display: ruby-text;
    margin-top: -340px;
}
.abc{
cursor: pointer;
}

.card {
    padding: 20px;
    width: 425px;
    min-height: 370px;
    border-radius: 20px;
    background: #212121;
    box-shadow: 5px 5px 8px #1b1b1b, -5px -5px 8px #272727;
    transition: 0.4s;
    display: inline-block;
    margin-left: 15px;
    /* align-items: center; */
    margin-bottom: 34px;
}

.card:hover {
  translate: 0 -10px;
}

.card-title {
  font-size: 18px;
  font-weight: 600;
  color: #b2eccf;
  margin: 15px 0 0 10px;
}

.card-image img{
  min-height: 170px;
  background-color: #313131;
  border-radius: 15px;
  background: #313131;
  box-shadow: inset 5px 5px 3px #2f2f2f,
            inset -5px -5px 3px #333333;
            width: 100%;
    height: 41vh;
}

.card-body {
  margin: 13px 0 0 10px;
  color: rgb(184, 184, 184);
  font-size: 15px;
}

.footer {
  float: right;
  margin: 28px 0 0 18px;
  font-size: 13px;
  color: #b3b3b3;
}

.by-name {
  font-weight: 700;
}

h3{
color: white;
margin: 0px

}
button {
  --purple: #9B7EDA;
  font-size: 18px;
  padding: 0.8em 3em;
  letter-spacing: 0.08em;
  position: relative;
  font-family: inherit;
  border-radius: 0.6em;
  overflow: hidden;
  transition: all 0.3s;
  line-height: 1.4em;
  border: 2px solid var(--purple);
  background: linear-gradient(to right, rgba(155, 126, 218, 0.1) 1%, transparent 40%, transparent 60%, rgba(155, 126, 218, 0.1) 100%);
  color: var(--purple);
  box-shadow: inset 0 0 10px rgba(155, 126, 218, 0.4), 0 0 9px 3px rgba(155, 126, 218, 0.1);
  cursor: pointer;
}

button:hover {
  color: #BFA3F3;
  box-shadow: inset 0 0 10px rgba(155, 126, 218, 0.6), 0 0 9px 3px rgba(155, 126, 218, 0.2);
}

button:before {
  content: "";
  position: absolute;
  left: -4em;
  width: 4em;
  height: 100%;
  top: 0;
  transition: transform .4s ease-in-out;
  background: linear-gradient(to right, transparent 1%, rgba(155, 126, 218, 0.1) 40%, rgba(155, 126, 218, 0.1) 60%, transparent 100%);
}

button:hover:before {
  transform: translateX(15em);
}
.button {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 5px;
  padding: 15px 20px;
  background-color: #212121;
  border: none;
  font: inherit;
  color: #e8e8e8;
  font-size: 20px;
  font-weight: 600;
  border-radius: 50px;
  cursor: not-allowed;
  overflow: hidden;
  transition: all 0.3s ease cubic-bezier(0.23, 1, 0.320, 1);
}

.button span {
  position: relative;
  z-index: 2;
  display: flex;
  align-items: center;
}

.button::before {
  position: absolute;
  content: '';
  width: 100%;
  height: 100%;
  translate: 0 105%;
  background-color: #F53844;
  transition: all 0.3s cubic-bezier(0.23, 1, 0.320, 1);
}

.button svg {
  width: 32px;
  height: 32px;
  fill: #F53844;
  transition: all 0.3s cubic-bezier(0.23, 1, 0.320, 1);
}

.button:hover {
  animation: shake 0.2s linear 1;
}

.button:hover::before {
  translate: 0 0;
}

.button:hover svg {
  fill: #e8e8e8;
}

@keyframes shake {
  0% {
    rotate: 0deg;
  }

  33% {
    rotate: 10deg;
  }

  66% {
    rotate: -10deg;
  }

  100% {
    rotate: 10deg;
  }
}
.subscribe {
    position: relative;
    height: 200px;
    width: 472px;
    padding: 20px;
    background-color: #FFF;
    border-radius: 4px;
    color: #333;
    box-shadow: 0px 0px 60px 5px rgba(0, 0, 0, 0.4);
    margin: auto;
}
.subscribe:after {
  position: absolute;
  content: "";
  right: -10px;
  bottom: 18px;
  width: 0;
  height: 0;
  border-left: 0px solid transparent;
  border-right: 10px solid transparent;
  border-bottom: 10px solid #1a044e;
}

.subscribe p {
  text-align: center;
  font-size: 20px;
  font-weight: bold;
  letter-spacing: 4px;
  line-height: 28px;
}

.subscribe input {
  bottom: 30px;
  border: none;
  border-bottom: 1px solid #d4d4d4;
  padding: 10px;
  width: 82%;
  background: transparent;
  transition: all .25s ease;
}

.subscribe input:focus {
  outline: none;
  border-bottom: 1px solid #0d095e;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', 'sans-serif';
}

.subscribe .submit-btn {
  position: absolute;
  border-radius: 30px;
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
  background-color: #0f0092;
  color: #FFF;
  padding: 12px 25px;
  display: inline-block;
  font-size: 12px;
  font-weight: bold;
  letter-spacing: 5px;
  right: -10px;
  bottom: -20px;
  cursor: pointer;
  transition: all .25s ease;
  box-shadow: -5px 6px 20px 0px rgba(26, 26, 26, 0.4);
}

.subscribe .submit-btn:hover {
  background-color: #07013d;
  box-shadow: -5px 6px 20px 0px rgba(88, 88, 88, 0.569);
}
#aaa {
    border: 0px solid #d4d4d4;
    padding: 0px;
    background: #100192;
    color: white;
    font-size: 20px;
 }
 
 
 
/*  Footer*/
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap");


.footer1 {
    position: relative;
    width: 100%;
    background: #4d4d4d;
    min-height: 51px;
    padding: 30px 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 115px;
    margin-top: 28px;
}

.social-icon,
.menu {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 0;
  flex-wrap: wrap;
}

.social-icon__item,
.menu__item {
  list-style: none;
}

.social-icon__link {
  font-size: 2rem;
  color: #fff;
  margin: 0 10px;
  display: inline-block;
  transition: 0.5s;
}
.social-icon__link:hover {
  transform: translateY(-10px);
}

.menu__link {
  font-size: 1.2rem;
  color: #fff;
  margin: 0 10px;
  display: inline-block;
  transition: 0.5s;
  text-decoration: none;
  opacity: 0.75;
  font-weight: 300;
}

.menu__link:hover {
  opacity: 1;
}

.footer1 p {
  color: #fff;
  margin: 15px 0 10px 0;
  font-size: 1rem;
  font-weight: 300;
}


 
</style>

</head>
<body>
    <div class="nav">
        <input type="checkbox" id="nav-check">
        <div class="nav-header">
          <div class="nav-title">
            Car Rental
          </div>
        </div>
        <div class="nav-btn">
          <label for="nav-check">
            <span></span>
            <span></span>
            <span></span>
          </label>
        </div>
        
        <div class="nav-links">
        <a>  <label for="show" class="abc">Admin-Login</label></a>
          <a href="#" target="_blank">About-Us</a>
          <a href="#" target="_blank">FeedBack</a>
        </div>
      </div>
      
      
  <div class="slider-container">
    <div id="slider" class="slider">
     <img src="https://www.ecorentacar.com/wp-content/uploads/2019/03/Luxury-Fleet-Banner.jpg" alt="Slide 3" class="slide" />
      <img src="https://www.travelattime.com/images/slide2.jpg" alt="Slide 8" class="slide" />
      <img src="https://www.ecorentacar.com/blog/wp-content/uploads/2020/02/delhi-tour.jpg" alt="Slide 9" class="slide" />
      <img src="https://invent.trips.pk/Resources/CMSImages/Audi-car-for-rent020322051910AM.jpg" alt="Slide 10" class="slide" />
      <img src="https://images.inc.com/uploaded_files/image/1920x1080/getty_649362670_395940.jpg" alt="Slide 5" class="slide" />
      <img src="https://www.jaipurtaxiservice.com/images/car-rental_bnr-1.jpg" alt="Slide 1" class="slide" />
      <img src="https://www.zandxcars.com/wp-content/uploads/2023/01/slide_2.jpg" alt="Slide 6" class="slide" />
      <img src="https://www.salty-spirit.com/cdn/shop/articles/Blog_cover_b8dc8c93-767e-4f1c-b1c1-3e3d9f68942e_1200x1200.png?v=1641415613" alt="Slide 4" class="slide" />
    </div>
    <div id="dots-container" class="dots-container"></div>
  </div>
  
  
  
  
 <div class="center">
      <input type="checkbox" id="show" />
      <div class="container">
        <label for="show" class="close-btn fas fa-times" title="close"></label>
        <div class="text">Admin Login</div>
        <form action="login">
          <div class="data">
            <label>UserName</label>
            <input type="text"  name="user"   required />
          </div>
          <div class="data">
            <label>Password</label>
            <input type="password" name="pass" required />
          </div>
          <div class="btn">
            <div class="inner"></div>
            <button type="submit">Login</button>
          </div>
        </form>
    </div>
    </div>  
 <%List<car> cars = (List<car>)request.getAttribute("data"); %>  
  <%for(car ccc : cars) {  %>
    <div class="card">
    <h3>Car ID -<%=ccc.getId()%></h3>
  <div class="card-image"><img alt="" src="<%=ccc.getImageLink()%>"></div>
  <p class="card-title"><%=ccc.getName() +"               &#x20B9;"+ccc.getCarRentPrice()%>/day</p>
  <p class="card-body">
    Nullam ac tristique nulla, at convallis quam. Integer consectetur mi nec magna tristique, non lobortis.
  </p>
  <%
  if(ccc.getIsCarAvailble().equals("Yes"))
  {
  %>
  <form action="getCar">
  <input type="hidden" name="id" value="<%=ccc.getId()%>" >
  <input type="hidden" name="name" value="<%=ccc.getName()%>" >
  <input type="hidden" name="price" value="<%=ccc.getCarRentPrice()%>" >
  <input type="hidden" name="link" value="<%=ccc.getImageLink()%>" >
  <p class="footer"><button  >Get Car</button></p>
   </form>
   <%}
  else{ %>
	  <p class="footer"><a class="button">
  <span>Not Available!</span>
</a></p>
  <% }%>
</div>

    <%} %>
    <div class="subscribe">
    <p>Return Car</p>
    <form action="return">
    <input placeholder="Enter Car Id " class="subscribe-input" name="id" type="number" required>
    <input placeholder="Enter Your Name " class="subscribe-input" name="name" type="text" required>
    <br>
    <div class="submit-btn"><button id="aaa">Return</button></div>
  </form>
  </div>
  
  
  <footer class="footer1">
    <div class="waves">
      <div class="wave" id="wave1"></div>
      <div class="wave" id="wave2"></div>
      <div class="wave" id="wave3"></div>
      <div class="wave" id="wave4"></div>
    </div>
    <ul class="social-icon">
      <li class="social-icon__item"><a class="social-icon__link" href="https://www.facebook.com/hitesh.chaudhari.90281">
          <ion-icon name="logo-facebook"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="https://github.com/HiteshChaudhari007">
          <ion-icon name="logo-github"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="https://www.linkedin.com/in/hitesh-chaudhari-88380b21b/">
          <ion-icon name="logo-linkedin"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="https://www.instagram.com/__.hitesh.__07/">
          <ion-icon name="logo-instagram"></ion-icon>
        </a></li>
    </ul>
    
    <p>&copy;2024 Hitesh Chaudhari  | All Rights Reserved</p>
  </footer>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    
      <script type="text/javascript">

      // img slide
      document.addEventListener("DOMContentLoaded", function() {
        const slides = document.querySelectorAll('.slide');
        const dotsContainer = document.getElementById('dots-container');

        let currentSlide = 0;

        // Create dots for each slide
        slides.forEach((slide, index) => {
          const dot = document.createElement('span');
          dot.classList.add('dot');
          dot.setAttribute('data-slide', index);
          dotsContainer.appendChild(dot);
        });

        const dots = document.querySelectorAll('.dot');
        dots[currentSlide].classList.add('active');

        function showSlide(n) {
          slides.forEach(slide => slide.style.display = 'none');
          dots.forEach(dot => dot.classList.remove('active'));
          slides[n].style.display = 'block';
          dots[n].classList.add('active');
          currentSlide = n;
        }

        function nextSlide() {
          currentSlide = (currentSlide + 1) % slides.length;
          showSlide(currentSlide);
        }

        setInterval(nextSlide, 3000);

        dotsContainer.addEventListener('click', function(e) {
          if (e.target.classList.contains('dot')) {
            const slideIndex = parseInt(e.target.getAttribute('data-slide'));
            showSlide(slideIndex);
          }
        });
      });

      </script>
</body>
</html>