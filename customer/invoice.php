
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
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
    </style>
</head>
<body>
<?php 

session_start();

include("includes/db.php");

    $orderid = $_GET['orderid'];

    $query = "select o.order_id,c.customer_name,a.product_title,o.qty,p.address,p.mobile,o.order_date,p.txnid,a.product_price,o.due_amount from customers c, customer_orders o, payments p, products a where c.customer_id=o.customer_id and p.payid=o.payid and o.product_id=a.product_id and order_id=$orderid"; 

    $run = mysqli_query($con, $query);

    while ($row = mysqli_fetch_array($run)) {
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

    } 
        ?>
        <div id="invo">
    <h1 style="background: black; padding: 10px; text-align: center; color: white; font-size: 35px; margin: 10px auto 0px auto; width: 600px;">INVOICE</h1><br><br>

        <div>Customer Name : <?php echo $c_name; ?></div>
        <div>Mobile No. : <?php echo $mobile; ?></div>
        <div>Shipping address : <?php echo $c_address; ?></div>

    <br><br>
    <div>
    <table class="verify" id="printTable" border="1" cellspacing="0" cellpadding="5" width="100%">

        <tr>
            <td><b>Order Id</b></td>
            <td><b>Description</b></td>
            <td><b>Unit Price</b></td>
            <td><b>Qty</b></td>
            <td><b>Total</b></td>
        </tr>

        <?php 


            $query = "select o.order_id,c.customer_name,a.product_title,o.qty,p.address,p.mobile,o.order_date,p.txnid,a.product_price,o.due_amount from customers c, customer_orders o, payments p, products a where c.customer_id=o.customer_id and p.payid=o.payid and o.product_id=a.product_id and order_id=$orderid";

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


        <?php }  ?>

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
