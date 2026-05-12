<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Sikkim_Tour2o.Home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
   
 <title>Main Home</title>

    <!-- CSS -->
    <link href="CSSFolder/MainStyle.css" rel="stylesheet" />

   <link href="CSSFolder/HomeImage.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />

</head>

<body>
    <style>
       
       /* DROPDOWN */
/* ASP DROPDOWN STYLE */
/* Hide "Districts" when dropdown opens */
h2{
    text-align:center;
}
h3{
    text-align:center;
}
#DropDownList3 option[value=""] {
    display: none;
}
/* NAVBAR LAYOUT */
.navbar {
    display: flex;
    justify-content: space-between; /* left & right */
    align-items: center;
    padding: 0 20px;
    background: black;
}

/* LEFT SIDE */
.nav-left {
    display: flex;
    align-items: center;
    gap: 10px;
}

/* RIGHT SIDE LINKS */
.nav-links {
    display: flex;
    list-style: none;
    gap: 15px;
}

.nav-links li a {
    color: white;
    text-decoration: none;
}

/* DROPDOWN STYLE */
.nav-dropdown {
    background: black;
    color: white;
    border: none;
    outline: none;
    cursor: pointer;
}
.dropdown-wrapper {
    display: flex;
    align-items: center;
    gap: 2px; /* 🔥 controls distance */
}
/* DROPDOWN */
.dropdown {
    position: relative;
    color:white;
}

.dropdown-menu {
    display: none;
    position: absolute;
    background: black;
    list-style: none;
    padding: 0;
    margin: 0;
    min-width: 180px;
    top: 100%;
    left: 0;
}

.dropdown-menu li {
    padding: 10px;
}

.dropdown-menu li a {
    color: white;
    text-decoration: none;
    display: block;
}

.dropdown-menu li:hover {
    background: #333;
}
.dropdown:hover .dropbtn {
    color: white;
}
/* Show dropdown on hover */
.dropdown:hover .dropdown-menu {
    display: block;
}
/* Hide "Districts" inside dropdown */
#DropDownList3 option[value=""] {
    display: none;
}
    </style>
<form id="form1" runat="server">

    <nav class="navbar">

    <ul class="nav-links">
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="Packages.aspx">Packages</a></li>
        <li class="dropdown">
    <span class="dropbtn">District <i class="fas fa-chevron-down"></i></span>
    <ul class="dropdown-menu">
        <li><a href="AllDistrict.aspx">East Sikkim</a></li>
        <li><a href="AllDistrict.aspx">West Sikkim</a></li>
        <li><a href="AllDistrict.aspx">North Sikkim</a></li>
        <li><a href="AllDistrict.aspx">South Sikkim</a></li>
    </ul>
</li>

        
                
        <li><a href="ContactUs.aspx">Contact</a></li>
            
    </ul>

                <img src="Image/ChatGPT%20Image%20Apr%2029,%202026,%2010_39_11%20AM.png" style="height:90px;width:auto; border-radius:50% "/></nav>

    <!-- HAMBURGER -->
    <div class="menu-toggle" id="menuToggle">
        <span></span>
        <span></span>
        <span></span>
    </div>

</nav>
    <div class="content">
        <h1>&nbsp;Welcome to Tour Sikkim</h1>
        <p>where the mountains touch the sky and peace touches the soul.</p>
    </div>
    <h2>Popular places in sikkim</h2>
 <!-- GALLERY CAROUSEL SECTION -->
<div class="gallery-carousel-section" style="background-color:white;">
    <div class="carousel-wrapper">
        <button class="carousel-btn prev-btn" id="prevBtn">
            <i class="fas fa-chevron-left"></i>

        </button>
        <a href="Packages.aspx">
        <div class="carousel-container" id="carouselContainer">
            <div class="carousel-track" id="carouselTrack">
                <div class="carousel-item">
                   <img src="Image/Gangtok.jpg" alt="Adventure 1" />
                   <div class="item-caption">
                       <a href="Packages.aspx"style="color:antiquewhite; font-size:18px; font-weight:bold; text-decoration:none;">MG Marg</a>
                   </div>
                </div>
     </a>
                <a href="Packages.aspx#Goechla">
                <div class="carousel-item">
                  
                    <img src="Image/Goecha%20La.jpg" alt="Adventure 2" />
                    <div class="item-caption">
                        <a href="Packages.aspx#Goechla"style="color:antiquewhite; font-size:18px; font-weight:bold; text-decoration:none;">
                            Goecha La</a></div>
                </div>
</a>
               <a href="Packages.aspx#NathulaPass">
                <div class="carousel-item">
                     <img src="Image/Nathula%20Pass.jpg" alt="Adventure 3" />
                     <div class="item-caption">
                         <a href="Packages.aspx#NathulaPass" style="color:antiquewhite; font-size:18px; font-weight:bold; text-decoration:none;">
                             Nathula Pass</a></div>
                </div>
</a>
                <div class="carousel-item">
                       <img src="Image/Rumtek%20Monastery.jpg" alt="Adventure 4" />
                         <div class="item-caption">
                             <a href="Packages.aspx#Rumtek"style="color:antiquewhite; font-size:18px; font-weight:bold; text-decoration:none;">
                                 Rumtek Monastery</a></div>
                </div>

                <div class="carousel-item">
                   <img src="Image/Sky%20Walk.jpg" alt="Adventure 5" />
                    <div class="item-caption">
                        <a href="Packages.aspx#SkyWalk"style="color:antiquewhite; font-size:18px; font-weight:bold; text-decoration:none;">
                            Sky Walk </a></div>
                </div>

                <div class="carousel-item">
                      <img src="Image/Temi%20Tea.jpg" alt="Adventure 6" />
                         <div class="item-caption">
                             <a href="Packages.aspx#TemiTea" style="color:antiquewhite; font-size:18px; font-weight:bold; text-decoration:none;">
                             Temi Tea</a>
                         </div>
                </div>
                <div class="carousel-item">
                       <img src="Image/Tsomgo%20Lake.jpg" alt="Adventure 7" />
                        <div class="item-caption">Tsomgo Lake</div>
                </div>
                <div class="carousel-item">
                        <img src="Image/Yumthang%20Valley.jpg" alt="Adventure 8" />
                         <div class="item-caption">
                             <a href="Packages.aspx#YumthangVally"style="color:antiquewhite; font-size:18px; font-weight:bold; text-decoration:none;">
                                 Yumthang Vally </a></div>
                </div>
            </div>
        </div>
        
        <button class="carousel-btn next-btn" id="nextBtn">
            <i class="fas fa-chevron-right"></i>
        </button>
    </div>
    
    <div class="carousel-dots" id="carouselDots"></div>
</div>
  
 

    
        <div class="about-section">
    <h2 class="about-title">Sikkim</h2>
    <div class="about-content">
        <p>
            Nestled in the lap of the mighty Himalayas, Sikkim is a land of breathtaking landscapes,
            snow-capped mountains, peaceful monasteries, and vibrant culture. Located in the northeastern 
            part of India, Sikkim is one of the most beautiful and cleanest states in the country.
            From the majestic view of Kanchenjunga the third highest mountain in the world - to the 
            crystal-clear waters of Tsomgo Lake, every corner of Sikkim offers unforgettable experiences.
       </p>
    </div>
          <h2 class="about-title">About us</h2>
            
    <p>
      

        Welcome to Sikkim Tour Package, your trusted travel partner for exploring Sikkim.
        We offer affordable tour packages to destinations like Gangtok, Tsomgo Lake, Nathula Pass,
        Pelling, and Lachung. We ensure a comfortable, affordable, and memorable travel experience for every visitor.

   </p>
            </div>

      
    
    <!-- FOOTER -->
    <div class="footer" style="background-color:black;color:white;">
        <p>Follow Us</p>
        <div class="social-icons">
            <a href="https://www.instagram.com/chamling_080?igsh=MWZncXh3NW0yb3QybQ=="><i class="fab fa-instagram" style="color:white;"></i></a>   
          </div>
    <p>Adventure is out there, go find it</p>
    <p style="font-size: 12px; margin-top: 10px; opacity: 0.7;">2024 Sikkim Tourism | Explore the Himalayan Beauty</p>
</div>

</form>

     
         <script src="NavScript.js"></script>
    <script src="HomeImage.js"></script>
</body>
</html>