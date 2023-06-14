<?php 
include('include/header.php');
?>
<title>Razorpay Payment Gateway</title>
<?php include('include/container.php');?>
<div class="container">
	<div class="row">		
		<div class="col-sm-12">	
			<h2>Razorpay Payment Gateway </h2>
			<br><br>
			<div class="col-sm-4 col-lg-4 col-md-4">
				
					
					<form id="checkout-selection" action="pay.php" method="POST">		
						<input type="hidden" name="item_name" value="My Products">
						<input type="hidden" name="item_description" value="My Test Product Description">
						<input type="hidden" name="item_number" value="3456">
						<input type="hidden" name="amount" value="1">
						<input type="hidden" name="address" value="ABCD Address">
						<input type="hidden" name="currency" value="INR">	
						<input type="hidden" name="cust_name" value="test">								
						<input type="hidden" name="email" value="test@gmail.com">	
						<input type="hidden" name="contact" value="Enter Your Contact Number">								
						<input type="submit" class="btn btn-primary" value="Pay">					
					</form>						
				</div>
			
		</div>
	</div>	
</div>
<?php include('include/footer.php');?>