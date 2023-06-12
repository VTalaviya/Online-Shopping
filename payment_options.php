
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Checkout</title>


  
  <link rel="stylesheet" href="styles/bootstrap.min.css"/>
  <link rel="stylesheet" href="styles/bootstrap.css"/>
  <link rel="stylesheet" href="styles/style.css">

  <style>

    .check_head{
      font-size:45px;

    }

    .check_image{
      width: 80%;
      height: 80%;
    }

    .buttonUpdate{
      width:70px;
      height:35px;
      font-size:15px;
    }

    .placeorder{
      text-align:center;
    }
    .btnorder{
      font-size:25px;
      padding:0 15px;
    }

    .text_payment{
      font-size:15px;
    }
  </style>
      
</head>
<body>
  <div class="container">
    <form method="post">
      <?php
      
        // session_start();

        include("includes/db.php");
        
        $email = $_SESSION['customer_email'];

        $payment_data = "select * from customers where customer_email='$email'";
        $query = mysqli_query($con,$payment_data);
        $data= mysqli_fetch_array($query);

        $name = $data['customer_name'];
        $customer_email = $data['customer_email'];
        $contact = $data['customer_contact'];
        $address = $data['customer_address'];

      ?>
      <div class="row my-5">
        <div class="col-sm-12 col-lg-8 mb-3">
          <label for="exampleInputEmail1" class="form-label mt-5">Full Name</label>
          <input type="email" class="form-control text_payment" id="exampleInputEmail1" name="name" value="<?php echo $name; ?>" aria-describedby="emailHelp" disabled/>

          <label for="exampleInputEmail1" class="form-label mt-4">Email address</label>
          <input type="email" class="form-control text_payment" id="exampleInputEmail1" name="email" value="<?php echo $customer_email; ?>" aria-describedby="emailHelp" disabled/>
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>

          <label for="exampleInputEmail1" class="form-label mt-4">Mobile No.</label>
          <input type="email" class="form-control text_payment" id="exampleInputEmail1" name="contact" value="<?php echo $contact; ?>" aria-describedby="emailHelp" disabled/>

          <label for="exampleInputEmail1" class="form-label mt-4">Address</label>
          <input type="email" class="form-control text_payment" id="exampleInputEmail1" name="address" value="<?php echo $address; ?>" aria-describedby="emailHelp" disabled/>

          <label for="exampleInputEmail1" class="form-label mt-4">Note (optional)</label>
          <textarea class="form-control text_payment" placeholder="Leave a Note here" name="note" id="floatingTextarea"></textarea>

          <div class="placeorder">
            <a href="razorpay"><button type="button" name="submit" class="btn btn-primary mt-4 btnorder">Place Order</button></a>
          </div>
        </div>
      </div>
    </form>
  </div>


  <!-- scripts -->
  <script src="js/jquery-3.7.0.min.js"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script> -->
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

<?php

  if(isset($_POST['submit']))
  {
    $_SESSION['cust_name'] = $name;
    $_SESSION['cust_email'] = $customer_email;
    $_SESSION['cust_contact'] = $contact;
    $_SESSION['cust_contact'] = $address;
  }


?>