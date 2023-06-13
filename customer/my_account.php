<?php

include("includes/db.php");


if(isset($_GET['cust_code'])){

  echo $_GET['cust_code'];

$update_customer = "update customers set customer_confirm_code='' where customer_confirm_code='" . $_GET['cust_code'] . "'";

$run_confirm = mysqli_query($con,$update_customer);

echo "<script>alert('Your Email Has Been Confirmed')</script>";

echo "<script>window.open('my_account.php?my_orders','_self')</script>";

}

session_start();

if(!isset($_SESSION['customer_email'])){

echo "<script>window.open('../checkout.php','_self')</script>";


}else {

include("includes/db.php");
include("../includes/header.php");
include("functions/functions.php");
include("includes/main.php");
include("../sendmail.php");


?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My account</title>
  <style>
    #wrapper {
    font-family: sans-serif;
    display: block;
    width: 650px;
    margin: auto;
    border-radius: 5px;
    margin-top: 55px;
    box-shadow: rgba(0, 0, 0, 0.15) 2px 3px 35px 0;
    overflow: hidden;
}

#top-img {
    background: linear-gradient(45deg, #07203c 0%, #491c1c 100%);
    color: #fff;
    font-size: 20px;
    font-weight: 100;
    text-align: center;
    padding: 75px 0;
}

#top-img b {
    display: block;
    margin-bottom: 12px;
    font-size: 32px;
}

#data {
    margin: 40px 25px;
}

hr {
    margin: 20px 5px;
    border: none;
    background: linear-gradient(45deg, #07203c 0%, #491c1c 100%);
    height: 1px;
}

.button {
    display: block;
    width: 40%;
    text-align: center;
    margin: auto;
    background-color: #ff1531;
    color: #fff;
    text-decoration: none;
    font-size: 18px;
    font-weight: 100;
    padding: 15px 0;
    border-radius: 45px;
    margin-top: 15px;
}
  </style>
</head>
<body>
  
  <main>
    <!-- HERO -->
    <div class="nero">
      <div class="nero__heading">
        <span class="nero__bold">My </span>Account
      </div>
      <p class="nero__text">
      </p>
    </div>
  </main>

<div id="content" ><!-- content Starts -->
<div class="container" ><!-- container Starts -->



<div class="col-md-12"><!-- col-md-12 Starts -->

<?php

$c_email = $_SESSION['customer_email'];

$get_customer = "select * from customers where customer_email='$c_email'";

$run_customer = mysqli_query($con,$get_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_confirm_code = $row_customer['customer_confirm_code'];

$c_name = $row_customer['customer_name'];

if(!empty($customer_confirm_code)){

?>

<div class="alert alert-danger"><!-- alert alert-danger Starts -->

<strong> Warning! </strong> Please Confirm Your Email and if you have not received your confirmation email

<a href="my_account.php?send_email" class="alert-link">

Send Email Again

</a>

</div><!-- alert alert-danger Ends -->

<?php } ?>

</div><!-- col-md-12 Ends -->

<div class="col-md-3"><!-- col-md-3 Starts -->

<?php include("includes/sidebar.php"); ?>

</div><!-- col-md-3 Ends -->

<div class="col-md-9" ><!--- col-md-9 Starts -->

<div class="box" ><!-- box Starts -->

<?php



if(isset($_GET['send_email'])){

$subject = "Email Confirmation Message";

$from = "avenuefashion.vf@gmail.com";

$message = "

<html>
<head>
<style>
    #wrapper {
    font-family: sans-serif;
    display: block;
    width: 650px;
    margin: auto;
    border-radius: 5px;
    margin-top: 55px;
    box-shadow: rgba(0, 0, 0, 0.15) 2px 3px 35px 0;
    overflow: hidden;
}

#top-img {
    background: linear-gradient(45deg, #07203c 0%, #491c1c 100%);
    color: #fff;
    font-size: 20px;
    font-weight: 100;
    text-align: center;
    padding: 75px 0;
}

#top-img b {
    display: block;
    margin-bottom: 12px;
    font-size: 32px;
}

#data {
    margin: 40px 25px;
}

hr {
    margin: 20px 5px;
    border: none;
    background: linear-gradient(45deg, #07203c 0%, #491c1c 100%);
    height: 1px;
}

.button {
    display: block;
    width: 40%;
    text-align: center;
    margin: auto;
    background-color: #ff1531;
    color: #fff;
    text-decoration: none;
    font-size: 18px;
    font-weight: 100;
    padding: 15px 0;
    border-radius: 45px;
    margin-top: 15px;
}
  </style>
</head>
<body>

<div id='wrapper'>
  <div id='top-img'>
    <b>Avenue Fashion</b>
    Account activation Mail
  </div>
  <div id='data'>
    Dear $c_name,
    <br />
    Thanks for signing up!
    <br />
    <br />
    Click on the button below to activate your account.
    <br />
    <a href='localhost/online shopping/customer/my_account.php?$customer_confirm_code' style='color:white;' target='_blank' class='button'>Activate my account</a>
    <hr />
    Any doubts? have some questions?
    <br />
    Send us an email to <a href='mailto:avenuefashion.vf@gmail.com'>avenuefashion.vf@gmail.com</a> we will happy to help.
    <br />
    <br />
    Have a great day!
  </div>
</div>
</body>
</html>

";

// $headers = "From: $from \r\n";

// $headers .= "Content-type: text/html\r\n";

sendmail($subject,$message,$c_email);

echo "<script>alert('Your Confirmation Email Has Been sent to you, check your inbox')</script>";

echo "<script>window.open('my_account.php?my_orders','_self')</script>";

}



if(isset($_GET['my_orders'])){

include("my_orders.php");

}

if(isset($_GET['pay_offline'])) {

include("pay_offline.php");

}

if(isset($_GET['edit_account'])) {

include("edit_account.php");

}

if(isset($_GET['change_pass'])){

include("change_pass.php");

}

if(isset($_GET['delete_account'])){

include("delete_account.php");

}

if(isset($_GET['my_wishlist'])){

include("my_wishlist.php");

}

if(isset($_GET['delete_wishlist'])){

include("delete_wishlist.php");

}

?>

</div><!-- box Ends -->


</div><!--- col-md-9 Ends -->

</div><!-- container Ends -->
</div><!-- content Ends -->



<?php

include("../includes/footer.php");

?>

<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>

</body>
</html>
<?php } ?>
