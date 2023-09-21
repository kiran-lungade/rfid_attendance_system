<?php  

session_start();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Apply for Get Pass</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha1256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
</script>
<script src="js/jquery.min.js"></script>
<script>
  $(document).ready(function(){
    setInterval(function(){
      $.ajax({
        url: ""
        }).done(function(data) {
        $('#User').html(data);
      });
    },3000);
  });
</script>
<style type="text/css">
  *{
    text-align:center;
  }
body {background-image:url("image/sanjivani.jpg");background-repeat:no-repeat;background-attachment:fixed;
    background-position: top right;
    background-size: cover;
    text-align: center;
  }
header .head h1 {font-family:aguafina-script;text-align: center;color:#black;}
header .head img {float: left;}
header a {float: right;text-decoration: none;font-family:cursive;font-size:25px;color:red;margin:-60px 0px 0px 20px;padding-right: 100px}
a:hover {opacity: 0.8;cursor: pointer;}
.bod {background-color:#ddd; text-align:center; opacity: 0.7;border-collapse: collapse;width:100%;height:270px;padding-bottom:20px}
.opt {float: left;margin: 20px 80px 0px 20px;}
.opt input {padding:4px 0px 2px 6px;margin:4px;border-radius:10px;background-color:#ddd; color: black;font-size:16px;border-color: black}
.opt p {font-family:cursive;text-align: left;font-size:19px;color:#f2f2f2;}
.opt label {color:black;font-size:23px}
.opt label:hover {color:red;opacity: 0.8;cursor: pointer;}
.opt table tr td {font-family:cursive;font-size:19px;color:black;}
.opt #lo {padding:4px 8px;margin-left:28px;background-color:#00A8A9;border-radius:7px;font-size:15px}
.opt #up {padding:4px 8px;margin-left:28px;background-color:#00A8A9;border-radius:7px;font-size:15px}
#lo:hover{opacity: 0.8;cursor: pointer;background-color:red}
#up:hover{opacity: 0.8;cursor: pointer;background-color:green}

.car {font-family:cursive;font-size:19px;padding-top: 45px;margin: 10px}

.op input {border-radius:10px;background-color:#ddd; color: black;font-size:16px;padding-left:5px;margin:18px 0px 0px 10px;border-color: black}
.op button {margin:7px 0px 5px 82px}
.op button:hover {cursor: pointer;}

#table {font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;border-collapse: collapse;width:      100%;}
#table td, #table th {border: 1px solid #ddd;padding: 8px;opacity: 0.6;}
#table tr:nth-child(even){background-color: #f2f2f2;}
#table tr:nth-child(odd){background-color: #f2f2f2;opacity: 0.9;}
#table tr:hover {background-color: #ddd; opacity: 0.8;}
#table th {opacity: 0.6;padding-top: 12px;padding-bottom: 12px;text-align: left;background-color:         #00A8A9;color: white;}
   
</style>
</head>
<body>
  <header >
    <div class="head">
      <img src="image/rfid1.jpg" width="80" height="80">
      <h1>RFID<br>
      Get Pass System</h1>
    </div>
    <a href="view.php">Attendance Log</a>
  </header>

<div class="bod">

    <div class="opt">
        <form action="AddCard.php" method="POST" role="search" >
        	<!--<table>
        		<tr>
        		<td>Enter ID Number :</td>-->
        			<!--<td>-->
                        <input type="number" placeholder="Enter Id number" name="search" aria-label="Search through site content" >
                        <button class="btn btn-dark btn-sm" name = "submit" Search button>
                    <!--</td>
        		</tr>-->
       <!--select * from logs where id = '?'-->
        	<!--</table>-->
        </form>

      <div class="op">
        <form method="POST" action="user_insert.php">            
            <button type="submit" name="del" style="border:none;background: none;" title="Remove"><img src="image/del.png" width="25" ></button>
            <button type="submit" name="set" style="border:none;background: none;" title="Select"><img src="image/set.png" width="30" ></button>
        </form>  
      </div>

    </div>


    <div class="Container">
        <table class="table">
            <?php 
        if(isset($_POST['submit'])){
            $search=$_POST['search'];

            $sql="select * from 'log' where id='$search'";
            result=mysqli_query($con,$sql);

            if($result){
                if(mysqli_num_rows($result)>0)
                {
                    echo '<thead>
                    <tr>
                    <th>Serial_no</th>
                    <id';
                }
                
            }
        }
        /*if (isset($_GET['error'])) {
          if ($_GET['error'] == "SQL_Error") {
             echo '<label style="color:red">SQL Error!</label>'; 
          }
          else if ($_GET['error'] == "Nu_Exist") {
             echo '<label style="color:red">The Number is already taken!</label>'; 
          }
          else if ($_GET['error'] == "No_SelID") {
             echo '<label style="color:red">There is no selecting card!</label>'; 
          }
          else if ($_GET['error'] == "No_ExID") {
             echo '<label style="color:red">This card does not exist!</label>'; 
          }
        }
        else if (isset($_GET['success'])) {
          if ($_GET['success'] == "registerd") {
            echo '<label style="color:green;">The Card has been added</label>';
          }
          else if ($_GET['success'] == "Updated") {
            echo '<label style="color:green;">The Card has been Updated</label>';
          }
          else if ($_GET['success'] == "deleted") {
            echo '<label style="color:green;">The Card has been Deleted</label>';
          }
          else if ($_GET['success'] == "Selected") {
            echo '<label style="color:green;">The Card has been selected</label>';
          }
        }*/
            ?>
        </table> 
    </div>

</div>
<img src="image/wi.png" style="float: right;width:200px;right:2%;top:125px;position: absolute;">
<a href="https://www.youtube.com/watch?v=drXEIFs8jH4"><img src="image/icon.png" style="float: right;right:8%;top:325px;position: absolute;"></a>

<div id="User"></div>

</body>
</html>