<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


<html>
  <head>
    <title>Avenue Fashion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <style>

      
  .silder-title h5 {
    font-size: 13px;
    text-transform: uppercase;
    text-align: center;
  }

  .silder-title p {
    font-size: 45px;
    letter-spacing: .3em;
    text-transform: uppercase;
    text-align: center;

  }
  .silder-title button {
    color: #fff;
    background-color: transparent;
    border: .2rem solid #fff;
    padding: 6px 22px;
    transition: 0.5s;
  }

  .silder-title button:hover{
    background-color: #fff;
    color: #000;
  }

  .offer-title  button{
    background-color: transparent;
    border: none;
    border: 2px solid black;
    padding: 3px 12px;
    color: #222222;
    text-transform: uppercase;
    transition: 0.5s;
  }

  .offer-title button:hover{
    background-color: #000;
    color: #fff;
  }

  
  .product-details button {
    background-color: #d9534f;
    /* border-color: #d43f3a; */
    border: 1px solid #d43f3a;
    padding: 6px 20px;
    color: #fff;
    text-transform: uppercase;
    transition: 0.5s;
  }

  .product-details button:hover {
    background-color: #ac2925;
    color: #fff;
  }

  .product-details p {
    margin: 8px 0px 12px;
  }

  .product-img img {
    width: 100%;
    height: 350px;
  }

  .product-details h3 {
    margin: 0;
    font-size: 18px;
  }
  .product-details h2 {
    margin: 0;
    fpx;
    font-weight:700;
  }

  .home-heading{
    text-transform: uppercase;
    font-size: 22px;
    text-align: center;
    font-weight: 400;
    letter-spacing: .1rem;

  }

  .bg{
    background-color:whitesmoke;
    padding: 15px 0;
    font-size: 20px;
  }

  @media only screen and (max-width: 320px)  and (max-width: 768px) {

    
.brand-box {
  text-align: center;
}

/* .brand-img {
  width: 50%;
} */
}
@media only screen and (max-width: 1023px) {

body {
  padding-top: 3.5rem;
}

.brand-box {
  text-align: center;
}

/* .brand-img {
  width: 50%;
} */
}

    </style>
  </head>

  <body>
    
 <!--  Silder Start -->
 <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">

<div class="carousel-inner">
  <div class="carousel-item active" data-bs-interval="100">
    <img src="images/slide-1.jpg" class="d-block w-100" alt="...">
    <div class="carousel-caption d-none d-md-block silder-title">
      <h5>You're Looking Good</h5>
      <p>New Lookbook</p>
      <a href="shop.php"><button>Discover More</button></a>

    </div>
  </div>
  <div class="carousel-item">
    <img src="images/slide-2.jpg" class="d-block w-100" alt="...">
    <div class="carousel-caption d-none d-md-block silder-title">
      <h5>Don’t Miss</h5>
      <p>Mysrety Deals</p>
      <a href="shop.php"><button>Discover More</button></a>
    </div>
  </div>

</div>
<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
  <span class="visually-hidden">Previous</span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
  <span class="carousel-control-next-icon" aria-hidden="true"></span>
  <span class="visually-hidden">Next</span>
</button>
</div>
<!--  Silder End -->
    
<div class="container mt-5 mb-5">
  <h1 class="home-heading">special offer</h1>
  <div class="row">
    <?php getSaleProducts(); ?>
  </div>
</div>


<!-- Categories Start -->

<div class="container mt-5">
  <h1 class="home-heading mt-5">Shop by Categories</h1>
<div class="row mb-5">
  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mt-4">
    <a href="hoodies.php"><img src="images/hoodie.png" class="cat-img" alt="..."></a>
  </div>
  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mt-4">
    <a href="suit.php"><img src="images/suit.png" class="cat-img" alt="..."></a>
  </div>
  
  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mt-4">
    <a href="Saree.php"><img src="images/saree.png" class="cat-img" alt="..."></a>
  </div>
  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mt-4">
    <a href="kurta.php"><img src="images/kurta.png" class="cat-img" alt="..."></a>
  </div>
  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mt-4">
    <a href="t-shirt.php"><img src="images/t-shirt.png" class="cat-img" alt="..."></a>
  </div>
  <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mt-4">
    <a href="jeans.php"><img src="images/jeans.png" class="cat-img" alt="..."></a>
  </div>
</div>
</div>
<!-- Categories End -->


<!--  Brand Start -->
<div class="bg_pay-sec my-5">

<div class="container">

  <div class="row payment-section">
    <div class="col-xl-3 col-lg-6 col-md-12 col-sm-6 pt-2 mt-3 brand-box">
      <!-- <div class=""> -->
        <img src="images/secret.webp" alt="" class="brand-img">
      <!-- </div>  -->
    </div>
    <div class="col-xl-3 col-lg-6 col-md-12 col-sm-6 mt-3">
      <div class="brand-box">
        <img src="images/decore.webp" alt="" class="brand-img">
      </div>
    </div>
   
    <div class="col-xl-3 col-lg-6 col-md-12 col-sm-6 pt-2 mt-3">
      <div class="brand-box">
        <img src="images/caper.webp" alt="" class="brand-img">
      </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-md-12 col-sm-6 mt-3">
      <div class="brand-box">
        <img src="images/outfie.webp" alt="" class="brand-img">
      </div>
    </div>
   
  </div>
</div>
</div>
<!--  Brand End -->


<!--  Gallery Start -->
<div class="container">
<h1 class="home-heading mt-5">Shop Gallery</h1>

<div class="row">
  <div class="col-xl-2 col-lg-2 col-md-4 col-sm-12 mt-2">
    <div class="gallery-img">
      <img src="images/gallery-1.jpg" alt="">
    </div>
  </div>
  <div class="col-xl-2 col-lg-2 col-md-4 col-sm-12 mt-2">
    <div class="gallery-img">
      <img src="images/gallery-2.jpg" alt="">
    </div>
  </div>
  <div class="col-xl-2 col-lg-2 col-md-4 col-sm-12 mt-2">
    <div class="gallery-img">
      <img src="images/gallery-3.jpg" alt="">
    </div>
  </div>
  <div class="col-xl-2 col-lg-2 col-md-4 col-sm-12 mt-2">
    <div class="gallery-img">
      <img src="images/gallery-4.jpg" alt="">
    </div>
  </div>
  <div class="col-xl-2 col-lg-2 col-md-4 col-sm-12 mt-2">
    <div class="gallery-img">
      <img src="images/gallery-5.jpg" alt="">
    </div>
  </div>
  <div class="col-xl-2 col-lg-2 col-md-4 col-sm-12 mt-2">
    <div class="gallery-img">
      <img src="images/gallery-6.jpg" alt="">
    </div>
  </div>
</div>
</div>
<!--  Gallery End -->



    <!-- FOOTER -->
    <footer class="page-footer">

      <div class="footer-nav">
        <div class="container flex clearfix">

          <div class="footer-nav__col footer-nav__col--info">
            <div class="footer-nav__heading">Information</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item footer-nav__link">
                The brand
              </li>
              <li class="footer-nav__item footer-nav__link">
                Local stores
              </li>
              <li class="footer-nav__item footer-nav__link">
                Customer service
              </li>
              <li class="footer-nav__item footer-nav__link">
                Privacy &amp; cookies
              </li>
              <li class="footer-nav__item footer-nav__link">
                Site map
              </li>
            </ul>
          </div>

          <div class="footer-nav__col footer-nav__col--whybuy">
            <div class="footer-nav__heading">Why buy from us</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item footer-nav__link">
                Shipping &amp; returns
              </li>
              <li class="footer-nav__item footer-nav__link">
                Secure shipping
              </li>
              <li class="footer-nav__item footer-nav__link">
                Testimonials
              </li>
              <li class="footer-nav__item footer-nav__link">
                Award winning
              </li>
              <li class="footer-nav__item footer-nav__link">
                Ethical trading
              </li>
            </ul>
          </div>

          <div class="footer-nav__col footer-nav__col--account">
            <div class="footer-nav__heading">Your account</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item footer-nav__link">
                Sign in
              </li>
              <li class="footer-nav__item footer-nav__link">
                Register
              </li>
              <li class="footer-nav__item footer-nav__link">
                View cart
              </li>
              <li class="footer-nav__item footer-nav__link">
                View your lookbook
              </li>
              <li class="footer-nav__item footer-nav__link">
                Track an order
              </li>
              <li class="footer-nav__item footer-nav__link">
                Update information
              </li>
            </ul>
          </div>


          <div class="footer-nav__col footer-nav__col--contacts">
            <div class="footer-nav__heading">Contact details</div>
            <address class="address">
                Head Office: Avenue Fashion.
              </address>
            <div class="phone">
              Telephone:
              <a class="phone__number" href="tel:0123456789">+919584839384</a>
            </div>
            <div class="email">
              Email:
              <a href="mailto:support@yourwebsite.com" class="email__addr">avenuefashion.vk@gmail.com</a>
            </div>
          </div>

        </div>
      </div>
      </div> 

      <div class="page-footer__subline">
        <div class="container clearfix">

          <div class="copyright">
            &copy; <?php echo date("Y");?> Ecommerce Website-PHP&trade;
          </div>

          <div class="developer">
            Developed by Viraj Talaviya
          </div>

          <div class="designby">
            Designed by Fenil Munjani
          </div>

        </div>
      </div>
    </footer>
    <script src="js/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
 
</body>

</html>
