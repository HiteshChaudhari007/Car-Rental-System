<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title> Add Car</title> 
   <style type="text/css">
   @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    /* background: #4070f4; */
    background-image: url(https://wallpapercave.com/wp/wp9357127.jpg);
    background-repeat: no-repeat;
    background-size: cover;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
input placerholder{
color: black;
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
  height: 52px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 900;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
    background-color: #ffffff8c;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #093841;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}
   </style>
   </head>
<body>


  <div class="wrapper">
    <h2>Add Car For Rent</h2>
    <form action="add" method="get">
      <div class="input-box">
        <input type="text" placeholder="Car Id" name="id" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Car Name" name="name" required>
        <input type="hidden"  name="isCarAvailble"  value="Yes" required>
      </div>
      <div class="input-box">
        <input type="number" placeholder="Car Price" name="carRentPrice" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Car Image Link" name="imageLink" required>
      </div>
      
      <div class="input-box button">
        <input type="Submit" value="Add">
      </div>
    </form>
  </div>
</body>
</html>