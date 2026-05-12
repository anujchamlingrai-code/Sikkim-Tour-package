<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>Sikkim Tourism | Explore Districts</title>

    <!-- CSS -->
    <style>
        /* ---------- RESET & BASE ---------- */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f7fc;
            scroll-behavior: smooth;
          
}
        

        /* ---------- FIXED NAVBAR WITH PURE CSS DROPDOWN ---------- */
        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            background: #000000;
            padding: 0 30px;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 35px;
            margin: 15px 0;
            padding: 0;
        }

        .nav-links li {
            position: relative;
            top: -3px;
            left: -1px;
        }

        .nav-links li a {
            color: white;
            text-decoration: none;
            font-weight: 600;
            font-size: 1.05rem;
            transition: 0.3s;
            letter-spacing: 0.5px;
            padding: 8px 0;
            display: inline-block;
        }

        .nav-links li a:hover {
            color: #ffcc00;
        }

        /* ---------- PURE CSS DROPDOWN WITH STRONG VISUAL FEEDBACK ---------- */
        .dropdown {
            position: relative;
        }

        .dropbtn {
            background: transparent;
            color: white;
            border: none;
            font-size: 1.05rem;
            font-weight: 600;
            cursor: pointer;
            padding: 8px 0;
            font-family: inherit;
            letter-spacing: 0.5px;
            transition: 0.3s;
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

        .dropbtn i {
            font-size: 11px;
            transition: transform 0.3s;
        }

        .dropdown:hover .dropbtn {
            color: #ffcc00;
        }

        .dropdown:hover .dropbtn i {
            transform: rotate(180deg);
        }

        /* Dropdown menu - appears on hover */
        .dropdown-content {
            display: none;
            position: absolute;
            top: 40px;
            left: 0;
            background: #1a1a1a;
            min-width: 190px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            border-radius: 12px;
            overflow: hidden;
            z-index: 1001;
            border: 1px solid #333;
        }

        /* Show dropdown on hover */
        .dropdown:hover .dropdown-content {
            display: block;
            animation: fadeIn 0.2s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .dropdown-content a {
            color: #ffffff;
            padding: 14px 22px;
            text-decoration: none;
            display: block;
            font-size: 1rem;
            font-weight: 500;
            transition: all 0.25s;
            border-bottom: 1px solid #2a2a2a;
            background-color: #1a1a1a;
            cursor: pointer;
        }

        .dropdown-content a:last-child {
            border-bottom: none;
        }

        /* STRONG VISUAL FEEDBACK - When mouse hovers over any district option */
        .dropdown-content a:hover {
            background-color: #ffcc00 !important;
            color: #000000 !important;
            padding-left: 30px;
            font-weight: 600;
        }

        /* Make sure the hover effect is very visible */
        .dropdown-content a:hover {
            background: #ffcc00;
            color: black;
        }

        /* Add a subtle left border on hover for extra visibility */
        .dropdown-content a:hover {
            border-left: 4px solid #ff6600;
        }

        /* ---------- MAIN CONTAINER (CARDS) ---------- */
        .container {
            max-width: 1300px;
            margin: 100px auto 40px auto;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 40px;
        }

        /* Tour Card */
        .tour-card {
            display: flex;
            flex-wrap: wrap;
            background: white;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: 0 12px 28px rgba(0,0,0,0.1);
            transition: transform 0.25s ease, box-shadow 0.3s;
            scroll-margin-top: 100px;
        }

        .tour-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 32px rgba(0,0,0,0.15);
        }

        .tour-img {
            flex: 1.2;
            min-width: 280px;
            max-height: 320px;
            overflow: hidden;
        }

        .tour-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .tour-card:hover .tour-img img {
            transform: scale(1.02);
        }

        .tour-info {
            flex: 1.8;
            padding: 24px 28px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .tour-info h2 {
            font-size: 1.8rem;
            margin-bottom: 12px;
            color: #1e2a3a;
            border-left: 5px solid #ff9800;
            padding-left: 15px;
        }

        /* District section targets for smooth scrolling */
        #south-district,
        #east-district,
        #west-district,
        #north-district {
            scroll-margin-top: 100px;
        }

        .desc {
            font-size: 1rem;
            line-height: 1.5;
            color: #2c3e4e;
            margin: 15px 0 20px 0;
        }

        .bottom {
            margin-top: 10px;
        }

        /* WhatsApp Button Style */
        .whatsapp-btn {
            background-color: #25D366;
            color: white;
            border: none;
            padding: 12px 28px;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 40px;
            cursor: pointer;
            transition: 0.25s;
            box-shadow: 0 2px 6px rgba(0,0,0,0.2);
            display: inline-flex;
            align-items: center;
            gap: 10px;
            text-decoration: none;
        }

        .whatsapp-btn:hover {
            background-color: #128C7E;
            transform: scale(1.02);
        }

        .whatsapp-btn i {
            font-size: 1.2rem;
        }

        /* FOOTER */
        .footer {
            background-color: black;
            color: white;
            text-align: center;
            padding: 28px 20px;
            margin-top: 40px;
            font-size: 0.9rem;
        }

        .social-icons {
            margin: 15px 0;
        }

        .social-icons a {
            color: white;
            font-size: 24px;
            margin: 0 12px;
            display: inline-block;
            transition: 0.2s;
            text-decoration: none;
        }

        .social-icons a:hover {
            color: #ffcc00;
            transform: scale(1.1);
        }

        /* Back to top button */
        .back-to-top {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: #ff9800;
            color: white;
            width: 45px;
            height: 45px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            font-size: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
            transition: 0.3s;
            z-index: 999;
        }

        .back-to-top:hover {
            background: #e68900;
            transform: translateY(-3px);
        }

        /* responsive tweaks */
        @media (max-width: 850px) {
            .navbar {
                padding: 0 15px;
            }
            .nav-links {
                gap: 20px;
                margin: 12px 0;
                flex-wrap: wrap;
                justify-content: center;
            }
            .tour-info h2 {
                font-size: 1.4rem;
            }
            .container {
                margin-top: 130px;
            }
            .tour-card {
                scroll-margin-top: 140px;
            }
            #south-district,
            #east-district,
            #west-district,
            #north-district {
                scroll-margin-top: 140px;
            }
            .dropdown-content {
                left: -20px;
            }
        }

        @media (max-width: 600px) {
            .nav-links {
                gap: 15px;
            }
            .tour-info {
                padding: 18px;
            }
            .dropdown-content {
                left: -30px;
            }
        }
    </style>

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
                
        <br />
        <br />
                
        <img src="" style="height:90px;width:auto; border-radius:50% "/><!-- NAVBAR WITH PURE CSS DROPDOWN --><nav class="navbar">
            <ul class="nav-links">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Packages.aspx">Packages</a></li>
                
                <!-- District Dropdown - Hover to see North, South, East, West -->
                <li class="dropdown">
                    <span class="dropbtn">District <i class="fas fa-chevron-down"></i></span>
                    <div class="dropdown-content">
                        <a href="#north-district">North Sikkim</a>
                        <a href="#south-district">South Sikkim</a>
                        <a href="#east-district">East Sikkim</a>
                        <a href="#west-district">West Sikkim</a>
                    </div>
                </li>
                
                <li><a href="ContactUs.aspx">Contact</a></li>
            </ul>
        </nav>

        <!-- Back to Top Button -->
        <a href="#" class="back-to-top" title="Back to Top">↑</a>

        <!-- CARDS CONTAINER -->
        <div class="container">
            <!-- ==================== NORTH SIKKIM SECTION ==================== -->
            <div class="tour-card" id="north-district">
                <div class="tour-img">
<img src="Image/lachngmonastry.jpg" />

                </div>
                <div class="tour-info">
                    <h2>North Sikkim: Lachung</h2>
                    <p class="desc">
                        North Sikkim is a pristine high-altitude region featuring breathtaking landscapes, alpine lakes, and the sacred Gurudongmar Lake at 17,800 ft. Explore charming villages like Lachen and Lachung, witness the beautiful Yumthang Valley, and experience the raw, untouched beauty of the Himalayas.
                    </p>
                    <div class="bottom">
                        <a href="https://wa.me/918617556300?text=Hello%20I%20want%20to%20enquire%20about%20North%20Sikkim%20package" target="_blank" class="whatsapp-btn">
                            <i class="fab fa-whatsapp"></i> Enquiry
                        </a>
                    </div>
                </div>
            </div>

            <!-- ==================== SOUTH SIKKIM SECTION ==================== -->
            <div class="tour-card" id="south-district">
                <div class="tour-img">
<img src="Image/Buddha.jpg" />

                </div>
                <div class="tour-info">
                    <h2>South Sikkim: Buddha Park, Ravangla</h2>
                    <p class="desc">
                        South Sikkim is home to the magnificent Buddha Park (Tathagata Tsal) in Ravangla, featuring a 130-foot tall statue of Lord Buddha. This district offers serene monasteries, lush tea gardens, and stunning views of the Himalayan range. Popular attractions include Temi Tea Garden, Ralong Monastery, and Namchi with its Char Dham temple complex.
                    </p>
                    <div class="bottom">
                        <a href="https://wa.me/918617556300?text=Hello%20I%20want%20to%20enquire%20about%20South%20Sikkim%20package" target="_blank" class="whatsapp-btn">
                            <i class="fab fa-whatsapp"></i> Enquiry
                        </a>
                    </div>
                </div>
            </div>

            <!-- ==================== EAST SIKKIM SECTION ==================== -->
            <div class="tour-card" id="east-district">
                <div class="tour-img">
<img src="Image/Gangtok.jpg" />

                </div>
                <div class="tour-info">
                    <h2>East Sikkim: Gangtok, MG Marg</h2>
                    <p class="desc">
                        East Sikkim is the most developed district, home to the capital city Gangtok. MG Marg is the vibrant heart of Gangtok offering pedestrian-friendly shopping, dining, and cultural experiences. The district also features the famous Nathula Pass connecting India to Tibet, Tsomgo Lake, Rumtek Monastery, and breathtaking views of Kanchenjunga.
                    </p>
                    <div class="bottom">
                        <a href="https://wa.me/918617556300?text=Hello%20I%20want%20to%20enquire%20about%20East%20Sikkim%20package" target="_blank" class="whatsapp-btn">
                            <i class="fab fa-whatsapp"></i> Enquiry
                        </a>
                    </div>
                </div>
            </div>

            <!-- Nathula Pass - East Sikkim -->
            <div class="tour-card">
                <div class="tour-img">
<img src="Image/Nathula%20Pass.jpg" />

                </div>
                <div class="tour-info">
                    <h2>Nathula Pass, East Sikkim</h2>
                    <p class="desc">
                        Nathu La Pass is a significant mountain pass in the Himalayas at 14,140 ft, connecting Sikkim, India with Tibet, China. Known for its historical trade routes and stunning natural beauty, the pass offers magnificent views of the surrounding peaks. It was part of the ancient Silk Route.
                    </p>
                    <div class="bottom">
                        <a href="https://wa.me/918617556300?text=Hello%20I%20want%20to%20enquire%20about%20Nathula%20Pass%20package" target="_blank" class="whatsapp-btn">
                            <i class="fab fa-whatsapp"></i> Enquiry
                        </a>
                    </div>
                </div>
            </div>

            <!-- ==================== WEST SIKKIM SECTION ==================== -->
            <div class="tour-card" id="west-district">
                <div class="tour-img">
<img src="Image/Sky%20Walk.jpg" />                </div>
                <div class="tour-info">
                    <h2>West Sikkim: Pelling Sky Walk</h2>
                    <p class="desc">
                        West Sikkim is home to the beautiful hill town of Pelling, known for breathtaking views of the mighty Kanchenjunga (3rd highest mountain in the world). The district features the famous Sky Walk at Chenrezig Statue, ancient Pemayangtse Monastery, Khecheopalri Lake (Wishing Lake), and the stunning Kanchenjunga Falls.
                    </p>
                    <div class="bottom">
                        <a href="https://wa.me/918617556300?text=Hello%20I%20want%20to%20enquire%20about%20Pelling%20package" target="_blank" class="whatsapp-btn">
                            <i class="fab fa-whatsapp"></i> Enquiry
                        </a>
                    </div>
                </div>
            </div>

            <!-- Phoktey Dara - West Sikkim -->
            <div class="tour-card">
                <div class="tour-img">
<img src="Image/phoktay.jpg" />                </div>
                <div class="tour-info">
                    <h2>Phoktey Dara, West Sikkim</h2>
                    <p class="desc">
                        Phoktey Dara is a hidden gem in western Sikkim, famous for offering one of the most spectacular panoramic views of the Himalayan mountain range, especially the majestic Kanchenjunga. This offbeat destination provides a serene escape from crowded tourist spots.
                    </p>
                    <div class="bottom">
                        <a href="https://wa.me/918617556300?text=Hello%20I%20want%20to%20enquire%20about%20Phoktey%20Dara%20package" target="_blank" class="whatsapp-btn">
                            <i class="fab fa-whatsapp"></i> Enquiry
                        </a>
                    </div>
                </div>
            </div>

            <!-- Zuluk - East Sikkim (Silk Route) -->
            <div class="tour-card">
                <div class="tour-img">
                    <img src="Image/zuluk.jpg" />
                </div>
                <div class="tour-info">
                    <h2>Zuluk, East Sikkim (Silk Route)</h2>
                    <p class="desc">
                        Zuluk (also spelled Dzuluk) is a small, scenic mountain village in eastern Sikkim, famous for its historic Silk Route and breathtaking zigzag roads through the mountains. Located at 10,000 ft, it offers stunning views of the Kanchenjunga range, especially during sunrise.
                    </p>
                    <div class="bottom">
                        <a href="https://wa.me/916297504598?text=Hello%20I%20want%20to%20enquire%20about%20Zuluk%20package" target="_blank" class="whatsapp-btn">
                            <i class="fab fa-whatsapp"></i> Enquiry
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <div class="footer">
            <p>Follow Us</p>
            <div class="social-icons">
                <a href="https://www.instagram.com/chamling_080?igsh=MWZncXh3NW0yb3QybQ==" target="_blank"><i class="fab fa-instagram"></i></a>
            </div>
            <p>Adventure is out there, go find it</p>
            <p style="font-size: 12px; margin-top: 10px; opacity: 0.7;">2024 Sikkim Tourism | Explore the Himalayan Beauty</p>
        </div>
    </form>

   
</body>
</html>