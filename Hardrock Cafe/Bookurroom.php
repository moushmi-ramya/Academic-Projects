<html>
<head>
<style>
.button {
  display: inline-block;
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
 padding: 25px 30px;
 border: 10px solid #f04dda;
}
input[type=number],input[type=date] {
  border: 2px solid #acde16;
  border-radius: 4px;
}
select {
  border: 2px solid #acde16;
  border-radius: 4px;
}
</style>
<form action="book.php" method="POST">
  <div style="padding-bottom: 18px;font-size : 50px;color:#ff1c20;"><center>Room Booking Form</center></div>
  <div style="font-size:30px;">
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Name:<br/>
         <input type="text" id="v6" name="name" required style="width : 180px;">
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Arrival date:<br/>
         <input type="date" id="v1" name="adate" required style="width : 180px;">
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Departure date:<br/>
         <input type="date" id="v2" name="ddate" required style="width : 180px;">
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Room type:<br/>
      <select id="v3" name="roomtype" required  style=";">
                            <option value="Single room">Single room</option>
                            <option value="Deluxe room">Deluxe room</option>
                            <option value="Luxury room">Luxury room</option>
      </select>
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Number of adults:<br/>
        <input type="number" id="v4" name="adults" required  style="width : 50px;">
  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;color:#251aed"">Number of children:<br/>
      <input type="number" id="v5" name="child" style="width : 50px;">
  </div>
  <button type="submit " class="button" name="submit">Book</button>
  <button class="button">Back</button>
</form>
</body>
</html>