<html>
<style>
body{
  font-family:Comic Sans MS;
  background-image: url('wallpaper4.jpg');
  background-repeat: no-repeat;
  background-size: 100% 100%;
}
</style>

<body>
<div>
    <h2><center>Food Order</center></h2>
    <hr>
</div>
		        
<form action="food.php" method="POST">
   <div style="font-size:30px;">
  <div style="display:flex;padding-bottom: 18px;">
  <div style=" margin-left :10%; margin-right :10%; width :25%;">Name:<br/>
         <input type="text" id="d1" name="name" required style="width: 100%;">
  </div><br>

  </div>
  <div style="margin-left :10%; margin-right :10%;padding-bottom: 18px;">Contact number:<br/>
          <input type="text" id="d2" name="phone"  required size = 20 maxlength=10 ;" placeholder="Mobile";>
  </div>
  <div style="margin-left: 10%; margin-right: 0; width:10%;">Delivery Time<br/>
             <input type="time" id="t3" name="time">
        </div>
    </div>
    
    <div><b><h3>Order:</h3></b><br/>
             <div>Specials:&emsp;&emsp;
                  <select id="t4" name="specials" >
                           <option value="s" placeholder="Choose">
                           <option value="s1">Tupelo Chicken Tenders</option>
                           <option value="s2">Southwest Spring Rolls</option>
                           <option value="s3">Rosemary Pasta</option>
                           <option value="s4">Twisted Mac, Chicken and Cheese</option>
                           <option value="s5">Classic Nachos</option> 
                  </select><br><br>
              </div>
              <div>Starters:&emsp;&nbsp;&nbsp;
                  <select id="t5" name="starters">
                           <option value="st" placeholder="Choose">
                           <option value="st1">Charred Huli Huli Veg Skewers</option>
                           <option value="st2">Dyna Bites</option>
                           <option value="st3">Amritsari Fish</option>
                           <option value="st4">Tex Mex Grilled Chicken</option>
                           <option value="st5">Roasted Wings</option> 
                  </select><br><br>
              </div>
              <div>Burgers:&emsp;&emsp;
                  <select id="t6" name="burgers">
                           <option value="b" placeholder="Choose">
                           <option value="b1">Quesadilla Burger</option>
                           <option value="b2">Panko Crusted Cottage Burger</option>
                           <option value="b3">Mushroom and Swiss Burger</option>
                           <option value="b4">BBQ Bacon Cheeseburger</option>
                           <option value="b5">Double Decker Cheeseburger</option> 
                  </select><br><br>
              </div>
              <div>Sandwiches:&nbsp;
                  <select id="t7" name="sandwiches">
                           <option value="sw" placeholder="Choose">
                           <option value="sw1">Grilled Chicken Sandwich</option>
                           <option value="sw2">Classic Club Sandwich</option>
                           <option value="sw3">BBQ Pork Sandwich</option>
                  </select><br><br>
              </div>
              <div>Salads:&emsp;&emsp;&nbsp;&nbsp;
                  <select id="t8" name="salads">
                           <option value="sa" placeholder="Choose">
                           <option value="sa1">Fresh Beet Side Salad</option>
                           <option value="sa2">California Style Cobb Salad</option>
                           <option value="sa3">Steak Salad</option>
                  </select><br><br>
              </div>
              <div>Desserts:&emsp;&nbsp;&thinsp;
                  <select id="t9" name="deserts">
                           <option value="d" placeholder="Choose">
                           <option value="d1">Homemade Apple Cobbler</option>
                           <option value="d2">NewYork Cheesecake</option>
                           <option value="d3">Hot Fudge Brownie</option>
                  </select><br><br>
              </div>
              <div>Milkshakes:&nbsp;&nbsp;
                  <select id="t10" name="milkshakes">
                           <option value="m" placeholder="Choose">
                           <option value="m1">Cookies and Cream Milkshake</option>
                           <option value="m2">Hot Fudge Milkshake</option>
                  </select><br><br>
              </div>
              <div>Mocktails:&emsp;&thinsp;
                  <select id="t11" name="mocktails">
                           <option value="mo" placeholder="Choose">
                           <option value="mo1">Wildberry Smoothie</option>
                           <option value="mo2">Mango Tango</option>
                           <option value="mo3">Purple Haze</option>
                  </select><br><br>
              </div>
    </div><br/>
			      
    <div>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	 <button type="submit" name="submit" class="button" >Confirm</button>
    </div><br/>
</form>
</body>                  

</html>