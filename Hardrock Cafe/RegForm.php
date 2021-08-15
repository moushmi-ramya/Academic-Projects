<html>
<head>
<style>
.button {
  display: center;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button:hover {
  background-color: #3e8e41
}
.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
 }
</style>
</head>
<body bgcolor="#87fad9">
<style>
form {
 margin:20px;
 padding: 20px 30px;
 border: 10px solid #f04dda;
}
input[type=text],input[type=password] {
  border: 2px solid #acde16;
  border-radius: 4px;
}
textarea {
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #acde16;
  border-radius: 4px;
  
}
</style>
<form action="connect.php" method="post">
  <div style="padding-bottom: 18px;font-size : 50px;color:#ff1c20;"><center>Hotel Registration Form</center></div>
  <div style="font-size:30px;">
  <div style="display:flex;padding-bottom: 18px;color:#251aed">
  <div style=" margin-left :10%; margin-right :10%; width :25%;">Name:<br/>
         <input type="text" id="d1" name="name" required style="width: 100%;">
  </div><br>

  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed">Contact number:<br/>
          <input type="text" id="d2" name="phone"  required size = 20 maxlength=10 ;" placeholder="Mobile";>
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Email address:<br/>
         <input type="text" id="d3" name="email" required style="width : 450px;">
  </div>
  
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Select your Gender: <br> <input type="radio" name="gender"  value="m">
						Male<input type="radio" name="gender"  value="f">
						Female
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Username:<br/>
         <input type="text" id="d4" name="username" required style="width : 450px;">
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Password:<br/>
         <input type="password" name="password" required style="width : 450px;" placeholder="Password" ; >
  
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Address:<br/>
      <textarea id="V3"  name="address" required style="width : 450px;" rows="2"></textarea>
  </div>
  <button type="submit" name="submit" class="button" >Register</button>
</form>
</body>
</html>