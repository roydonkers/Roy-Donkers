<?php

include("inc/connectDB.php");

$teams = array();

$sql = "select * from team";

$resource = mysqli_query($con,$sql);

while($row = mysqli_fetch_assoc($resource))
{
  $teams[] = $row;
}

if(isset($_GET['teamId']))
{
  $teamId = $_GET['teamId'];
  $sql2 = "select * from hero where teamId =" . $teamId;
}
else {
  $sql2 = "select * from hero";
}

if(isset($_GET['heroId']))
{
  $heroId = $_GET['heroId'];
  $sql3 = "select * from hero where heroId =" . $_GET["heroId"]; 
  $sql4 = "select ratingReview from rating where heroId =" . $_GET["heroId"]; 
}
else {
  $sql3 = "select * from hero where heroId = 1";
}



$resource = mysqli_query($con,$sql2);

$heroes = array();
while($row = mysqli_fetch_assoc($resource))
{
  $heroes[] = $row;
}

$resource = mysqli_query($con,$sql3);


$hero = array();
while($row = mysqli_fetch_assoc($resource))
{
  $hero[] = $row;
}

$reviews = mysqli_query($con,$sql4);

$reviewing = array();
while($row = mysqli_fetch_assoc($reviews))
{
  $reviewing[] = $row;
}
  var_dump($reviewing);


//$heroId = rand(1,8);
?>
<!DOCTYPE html>
<html>
  <head>
    <link rel="shortcut icon" type="image/x-icon" href="img/dclogo.png"/>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="utf-8">
    <title>DC-Heroes</title>
  </head>
  <body>
    <header id="main-header">
      <div id="logo">
        <a href="index.php"><img src="img/dc.png" alt=""></a>
        <h1><a href="index.php">Heroes</a></h1>
      </div>
    </header>
    <div id="main-container">
      <div class="left-box">
        <div class="teams">
        <h1><a href="index.php">Teams</a></h1>
        <?php
        foreach ($teams as $key => $value) {
          # code...
          ?>
          <a href="index.php?teamId=<?php echo $value['teamId']; ?>"><h2><?php echo $value['teamName'];  ?></h2></a>
          <?php
        }
         ?>
        </div>
      </div>
      <div class="middle-box">
        <?php
        foreach ($heroes as $key => $value) {
          ?>
          <div id="hero-name">
            <a href="index.php?teamId=<?php echo $value['teamId']; ?>&heroId=<?php echo $value['heroId']; ?>"><h2><?php echo $value['heroName'];  ?></h2></a>
            <div class="hero-image">
            <a href="index.php?teamId=<?php echo $value['teamId']; ?>&heroId=<?php echo $value['heroId']; ?>"><img src="img/<?php echo $value['heroImage']; ?>"/></a>
            </div>
          </div>
          <p><?php echo $value['heroDescription']; ?></p>
            <a href="index.php?teamId=<?php echo $value['teamId']; ?>&heroId=<?php echo $value['heroId']; ?>"><div class="heroinfo-button">
              <p>More Info!</p>
            </div>
            </a>
          <?php
        }
         ?>
      </div>
      <div class="right-box">
        <?php
        foreach ($hero as $key => $value) {
          # code...
          ?>
          <a href="index.php?teamId=<?php echo $value['teamId']; ?>&heroId=<?php echo $value['heroId']; ?>"><h2><?php echo $value['heroName'];  ?></h2></a>
      <div class="heroes-image-right">
        <img height="350" width="250" src="img/<?php echo $value['heroImage']; ?>"/>
        </div>
          <div class="heroes-description-right">
        <p><?php echo $value['heroDescription']; ?></p>
        </div>
          <div class="heroes-power-right">
        <h1><?php echo $value['heroPower']; ?></h1>
        </div>
      <?php }
       ?>
       <div class="rating">
       <h2>Rating</h2>
       <?php
   		if($_SERVER['REQUEST_METHOD'] == "POST")
   		{
   			//var_dump($_POST);
        // get info from form
        $heroId = $_POST['heroId'];
        $rating = $_POST['rating'];
        $review = $_POST['review'];

        $insertSQL = "insert into `rating` (`heroId`,`rating`,`ratingDate`,`ratingReview`) VALUES ($heroId, $rating, ".time().", '$review')";
        $resource = mysqli_query($con,$insertSQL) or die($insertSQL);
   		}
   		?>
   		<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="frmRate">
   			<fieldset>
   				<div class="rate">
   					<input type="radio" id="rating10" name="rating" value="10" /><label class="lblRating" for="rating10" title="5 stars"></label>
   				    <input type="radio" id="rating9" name="rating" value="9" /><label class="lblRating half" for="rating9" title="4 1/2 stars"></label>
   				    <input type="radio" id="rating8" name="rating" value="8" /><label class="lblRating" for="rating8" title="4 stars"></label>
   				    <input type="radio" id="rating7" name="rating" value="7" /><label class="lblRating half" for="rating7" title="3 1/2 stars"></label>
   				    <input type="radio" id="rating6" name="rating" value="6" /><label class="lblRating" for="rating6" title="3 stars"></label>
   				    <input type="radio" id="rating5" name="rating" value="5" /><label class="lblRating half" for="rating5" title="2 1/2 stars"></label>
   				    <input type="radio" id="rating4" name="rating" value="4" /><label class="lblRating" for="rating4" title="2 stars"></label>
   				    <input type="radio" id="rating3" name="rating" value="3" /><label class="lblRating half" for="rating3" title="1 1/2 stars"></label>
   				    <input type="radio" id="rating2" name="rating" value="2" /><label class="lblRating" for="rating2" title="1 star"></label>
   				    <input type="radio" id="rating1" name="rating" value="1" /><label class="lblRating half" for="rating1" title="1/2 star"></label>
   				    <input type="radio" id="rating0" name="rating" value="0" /><label class="lblRating" for="rating0" title="No star"></label>
   				</div>
       </div>
       <div class="review">
       <h2>Review</h2>
         <textarea name="review" required></textarea><br />
         <input type="submit" name="submitRating" value="Rate Hero"/>
         <input type="hidden" name="heroId" value="<?php echo $value['heroId']; ?>"/>
         <input type="hidden" name="heroName" value="<?php echo $value['heroName']; ?>"/>
         <br>
  <?php 
  foreach ($reviewing as $key => $value) {
        echo $key;
      }
          ?>

         </fieldset>
       </form>
       </div>
      </div>
    </div>
  </body>
</html>
