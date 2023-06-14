<?php

require('config.php');
include("../includes/db.php");

session_start();

require('razorpay-php/Razorpay.php');
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

$success = true;

$error = "Payment Failed";

if (empty($_POST['razorpay_payment_id']) === false)
{
    $api = new Api($keyId, $keySecret);

    try
    {
        // Please note that the razorpay order ID must
        // come from a trusted source (session here, but
        // could be database or something else)
        $attributes = array(
            'razorpay_order_id' => $_SESSION['razorpay_order_id'],
            'razorpay_payment_id' => $_POST['razorpay_payment_id'],
            'razorpay_signature' => $_POST['razorpay_signature']
        );

        $api->utility->verifyPaymentSignature($attributes);
    }
    catch(SignatureVerificationError $e)
    {
        $success = false;
        $error = 'Razorpay Error : ' . $e->getMessage();
    }
}

if ($success === true)
{
    $amount = $_SESSION['amount'];
    $txnid = $_POST['razorpay_payment_id'];

    $email = $_SESSION['customer_email'];

    $payment_data = "select * from customers where customer_email='$email'";
    $query_cust = mysqli_query($con,$payment_data);
    $data= mysqli_fetch_array($query_cust);

    $name = $data['customer_name'];
    $customer_email = $data['customer_email'];
    $contact = $data['customer_contact'];
    $address = $data['customer_address'];
    $cust_id = $data['customer_address'];

    $query = "INSERT INTO `payments`(`fullname`, `amount`, `txnid`, `payer_email`, `currency`, `mobile`, `address`, `status`) VALUES ('$name',$amount,'$txnid','$customer_email','INR','$contact','$address','Success')";
    $payment = mysqli_query($con,$query);
    $payid = mysqli_insert_id($con);

    

    $id = $_SESSION['customer_id'];

    $cart = "select * from cart where customer_id=$id";
    $cart_query = mysqli_query($con,$cart);

    while($cart_data = mysqli_fetch_array($cart_query))
    {
        $pid = $cart_data['p_id'];
        $pprice = $cart_data['p_price'] * $cart_data['qty'];
        $qty= $cart_data['qty'];
        $size= $cart_data['size'];
        
        $query_order = "INSERT INTO `customer_orders`(`customer_id`, `payid`, `product_id`, `due_amount`, `qty`, `size`, `order_status`) VALUES ('$id','$payid','$pid','$pprice','$qty','$size','Success')";
        $order_query = mysqli_query($con,$query_order);

        $delete_cart = "delete from cart where customer_id=$id and p_id=$pid";
        mysqli_query($con,$delete_cart);

    }

    if($payment)
    {
        echo "
            <script>alert('Order has been Placed successfully')</script>
        ";
    }
    
}
else
{
    $html = "<p>Your payment failed</p>
             <p>{$error}</p>";
}
			

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice</title>
    <style>
        .verify th,td{
            padding: 5px 7px;
            /* border: 2px solid black; */
            
        }

        .verify{
        
            width: 600px;
            margin: 20px auto;
            margin-top: 0px;
        }
        .verify th{
            font-weight: 700;
        }
        .button{
            display:flex;
            justify-content:center;
            width:100%;
        }
    </style>
</head>
<body>
    <div id="invo">
    <h1 style="background: black; padding: 10px; text-align: center; color: white; font-size: 35px; margin: 10px auto 0px auto; width: 600px;">INVOICE</h1><br><br>
    <?php include("../includes/db.php");

        $trans = $_POST['razorpay_payment_id'];

        if($payment)
        {
            $query = "select o.order_id,c.customer_name,a.product_title,o.qty,p.address,p.mobile,o.order_date,p.txnid,a.product_price,o.due_amount from customers c, customer_orders o, payments p, products a where c.customer_id=o.customer_id and p.payid=o.payid and o.product_id=a.product_id and txnid='$txnid'";

            // echo $query;

            $run = mysqli_query($con, $query);

            while ($row = mysqli_fetch_array($run,MYSQLI_ASSOC)) {
                $orderid = $row['order_id'];
                $c_name = $row['customer_name'];
                $proTitle = $row['product_title'];
                $qty = $row['qty'];
                $c_address = $row['address'];
                $mobile = $row['mobile'];
                $orderDate = $row['order_date'];
                $p_txnid = $row['txnid'];
                $unitPrice = $row['product_price'];
                $Total = $row['due_amount'];
                $newDate = date("d-m-Y", strtotime($orderDate));

        } }
        ?>
    <div>Customer Name : <?php echo $c_name; ?></div>
    <div>Mobile No. : <?php echo $mobile; ?></div>
    <div>Order Date : <?php echo $newDate; ?></div>
    <div>Shipping address : <?php echo $c_address; ?></div><br><br>
    <div>
    <table class="verify" id="printTable" border="1" cellspacing="0" cellpadding="5" width="100%">
        <!--<tr style="font-weight: bold;" colspan="10" bgcolor="#4DB849">
            <th>Id</th>
            <th>Firstname</th>
            <th>Last Name</th>
            <th>Product Id</th>
            <th>Quantity</th>
            <th>Order Address</th>
            <th>Mobile Number</th>
            <th>Order Date</th>
            <th>Payment Id</th>
        </tr>-->

        <tr>
            <td><b>Order Id</b></td>
            <td><b>Description</b></td>
            <td><b>Unit Price</b></td>
            <td><b>Qty</b></td>
            <td><b>Total</b></td>
        </tr>

        <?php 

        $trans = $_POST['razorpay_payment_id'];

        if($payment)
        {
            $query = "select o.order_id,c.customer_name,a.product_title,o.qty,p.address,p.mobile,o.order_date,p.txnid,a.product_price,o.due_amount from customers c, customer_orders o, payments p, products a where c.customer_id=o.customer_id and p.payid=o.payid and o.product_id=a.product_id and txnid='$txnid'";

            // echo $query;

            $run = mysqli_query($con, $query);

            while ($row = mysqli_fetch_array($run,MYSQLI_ASSOC)) {
                $orderid = $row['order_id'];
                $c_name = $row['customer_name'];
                $proTitle = $row['product_title'];
                $qty = $row['qty'];
                $c_address = $row['address'];
                $mobile = $row['mobile'];
                $orderDate = $row['order_date'];
                $p_txnid = $row['txnid'];
                $unitPrice = $row['product_price'];
                $Total = $row['due_amount'];

        
        ?>

        <tr>
            <td><?php echo $orderid; ?></td>
            <td><?php echo $proTitle; ?></td>
            <td><?php echo $unitPrice; ?></td>
            <td><?php echo $qty; ?></td>
            <td><?php echo $Total; ?></td>
        </tr>


        <?php } } ?>

    </table>
    </div>
    </div>

    <div class="button">
            
        <input style="background: black; margin: 0 5px; padding: 12px 25px; border: 2px solid black; color: white; border-radius: 5px; display: inline-block; text-align: center; text-decoration: none;" type="button" value="Download PDF" onclick="printTable()">
        <a href="../index.php">
            <input style="background: black; margin: 0 5px; padding: 12px 25px; border: 2px solid black; color: white; border-radius: 5px; display: inline-block; text-align: center; text-decoration: none;" type="button" value="Continue Shopping">
        </a>
    </div>



    <script src="../js/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/printThis/1.15.0/printThis.min.js" integrity="sha512-d5Jr3NflEZmFDdFHZtxeJtBzk0eB+kkRXWFQqEc1EKmolXjHm2IKCA7kTvXBNjIYzjXfD5XzIjaaErpkZHCkBg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script>
            function printTable() {
                $("#invo").printThis();
            }
    </script>
</body>
</html>

