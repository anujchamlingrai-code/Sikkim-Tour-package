<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Sikkim_Tour2o.Packages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
   
    <title>Packages</title>

    <!-- CSS -->
    <link href="CSSFolder/MainStyle.css" rel="stylesheet" />
    <link href="CSSFolder/Packages.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
</head>

<body>

    <style>
        /* Hide "Districts" when dropdown opens */
        #DropDownList3 option[value=""] {
            display: none;
        }
        /* NAVBAR LAYOUT */
        .navbar {
            display: flex;
            justify-content: space-between;
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
            gap: 2px;
        }

        /* Hide "Districts" inside dropdown */
        #DropDownList3 option[value=""] {
            display: none;
        }

        /* Style for View button to look consistent */
        .tour-btn {
            background-color: #ff9800;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 25px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
            display: inline-block;
            text-decoration: none;
        }

        .tour-btn:hover {
            background-color: #e68900;
            transform: scale(1.05);
        }
    </style>

    <form id="form1" runat="server">

        <!-- NAVBAR -->
        <nav class="navbar" style="background-color:black">
            <div class="logo">
                <br />
                <img src="Image/ChatGPT%20Image%20Apr%2029,%202026,%2010_39_11%20AM.png" style="height:90px;width:auto; border-radius:50% "/>
            </div>

            <ul class="nav-links" id="navLinks">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Packages.aspx">Packages</a></li>
                <li><a href="AllDistrict.aspx">District</a></li>
                <li><a href="ContactUs.aspx">Contact</a></li> 
            </ul>

            <!-- Hamburger -->
            <div class="menu-toggle" id="menuToggle">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </nav>
        <br /><br />

        <!-- TOUR PLACES SECTION -->
        <div class="tour-places-section">
            <div class="tour-container">
                <!-- Card 1 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image">
                        <img src="Image/Buddha.jpg" alt="Buddha Park" />
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Buddha Park, South Sikkim.</h3>
                        <p class="tour-description">
                            It is also known as Tathagata Tsal, Located in Ravangla, South Sikkim 
                            is situated near Ravangla in South Sikkim district of the Indian state of Sikkim.
                        </p>
                        <asp:Button ID="btnView1" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image" id="Mgmarg">
                        <img src="Image/Gangtok.jpg" alt="Gangtok MG Marg" />
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Gangtok, Mg Marg</h3>
                        <p class="tour-description">
                            MG Marg, or Mahatma Gandhi Marg, is the vibrant heart of Gangtok, 
                            offering a unique blend of shopping, dining, and cultural experiences in a pedestrian-friendly environment.
                        </p>
                        <asp:Button ID="btnView2" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image" id="NathulaPass">
                        <img src="Image/Nathula%20Pass.jpg" alt="Nathula Pass"/>
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Nathula Pass, East Sikkim</h3>
                        <p class="tour-description">
                            Nathu La Pass is a significant mountain pass in the Himalayas at 14,140 ft, 
                            connecting Sikkim, India with Tibet, China. Known for its historical trade routes and stunning natural beauty.
                        </p>
                        <asp:Button ID="btnView3" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 4 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image" id="Rumtek">
                        <img src="Image/Rumtek%20Monastery.jpg" alt="Rumtek Monastery"/>
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Rumtek Monastery, East Sikkim</h3>
                        <p class="tour-description">
                            Rumtek Monastery is one of the largest and most significant monasteries in Sikkim, 
                            serving as the seat of the Karmapa. It features stunning Tibetan architecture and sacred artifacts.
                        </p>
                        <asp:Button ID="btnView4" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 5 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image" id="SkyWalk">
                        <img src="Image/Sky%20Walk.jpg" alt="Sky Walk"/>
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Sky Walk, Pelling, West Sikkim</h3>
                        <p class="tour-description">
                            The Sky Walk at Pelling offers breathtaking views of the Kanchenjunga range. 
                            Located at the Chenrezig Statue, it features a glass-bottomed platform suspended at a great height.
                        </p>
                        <asp:Button ID="btnView5" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 6 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image" id="TemiTea">
                        <img src="Image/Temi%20Tea.jpg" alt="Temi Tea" />
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Temi Tea Garden, South Sikkim</h3>
                        <p class="tour-description">
                            Temi Tea Garden is the only tea estate in Sikkim, known for producing high-quality organic tea. 
                            Located in South Sikkim, it offers stunning views of the surrounding mountains.
                        </p>
                        <asp:Button ID="btnView6" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 7 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image" id="Goechala">
                        <img src="Image/Goecha%20La.jpg" alt="Goecha La" />
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Goecha La, West Sikkim</h3>
                        <p class="tour-description">
                            Goecha La is a high mountain pass at 16,207 ft, offering spectacular views of Kanchenjunga. 
                            It is a popular trekking destination for adventure enthusiasts.
                        </p>
                        <asp:Button ID="btnView7" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 8 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image" id="YumthangVally">
                        <img src="Image/Yumthang%20Valley.jpg" alt="Yumthang Valley" />
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Yumthang Valley, North Sikkim</h3>
                        <p class="tour-description">
                            Yumthang Valley, known as the "Valley of Flowers," is a stunning Himalayan meadow 
                            located in North Sikkim. It features hot springs, rhododendron forests, and breathtaking landscapes.
                        </p>
                        <asp:Button ID="btnView8" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

                <!-- Card 9 -->
                <div class="tour-card" style="background-color:black; color:white">
                    <div class="tour-image">
                        <img src="Image/Tsomgo%20Lake.jpg" alt="Tsomgo Lake"/>
                    </div>
                    <div class="tour-content">
                        <h3 class="tour-title">Tsomgo Lake, East Sikkim</h3>
                        <p class="tour-description">
                            Tsomgo Lake is a glacial lake located at 12,310 ft near Gangtok. 
                            It is considered sacred by locals and remains frozen during winter months.
                        </p>
                        <asp:Button ID="btnView9" runat="server" Text="View" CssClass="tour-btn" OnClick="RedirectToDistrictPage" />
                    </div>
                </div>

            </div>
        </div>

        <!-- FOOTER -->
        <div class="footer" style="background-color:black; color:white">
            <p>Follow Us</p>
            <div class="social-icons">
                <a href="https://www.instagram.com/chamling_080?igsh=MWZncXh3NW0yb3QybQ=="><i class="fab fa-instagram" style="color:white;"></i></a>   
              </div>
    <p>Adventure is out there, go find it</p>
    <p style="font-size: 12px; margin-top: 10px; opacity: 0.7;">2024 Sikkim Tourism | Explore the Himalayan Beauty</p>
</div>

    </form>

    <script src="NavScript.js"></script>
</body>
</html>