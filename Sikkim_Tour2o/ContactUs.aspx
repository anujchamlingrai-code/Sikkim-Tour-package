<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Sikkim_Tour2o.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
   
    <title>Contact Us</title>

    <!-- CSS -->
    <link href="CSSFolder/MainStyle.css" rel="stylesheet" />
    <link href="CSSFolder/Contact.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
    
    <style>
  
        .guides-section {
            margin-top: 20px;
        }

        .guides-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .guides-header h2 {
            color: black;
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        .guides-header p {
            color: #fff;
            opacity: 0.8;
        }

        .guides-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

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
        .contact-info-section {
    background-color:black;
    margin-bottom: 60px;
}
        .contact-card {
            color: white;
            padding: 20px;
        }

        .contact-card h2 {
            color: white;
        }

        .guide-card {
            background-color: black;
            color: white;
            backdrop-filter: blur(10px);
            border-radius: 16px;
            overflow: hidden;
            border: 1px solid rgba(0, 247, 255, 0.2);
            transition: all 0.3s;
            text-align: center;
        }

        .guide-card:hover {
            transform: translateY(-5px);
            border-color: rgba(0, 247, 255, 0.5);
            box-shadow: 0 10px 30px rgba(0, 247, 255, 0.2);
        }

        .guide-image {
            height: 280px;
            overflow: hidden;
        }

        .guide-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .guide-card:hover .guide-image img {
            transform: scale(1.05);
        }

        .guide-info {
            padding: 20px;
        }

        .guide-info h3 {
            color: white;
            font-size: 1.3rem;
            margin-bottom: 5px;
        }

        .guide-role {
            color: rgba(255, 255, 255, 0.7);
            font-size: 0.85rem;
            margin-bottom: 15px;
        }

        .guide-contact {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            margin-bottom: 10px;
            color: #fff;
            font-size: 0.9rem;
        }

        .guide-contact i {
            color: #00f7ff;
        }

        .guide-experience {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
            color: #ffc107;
            font-size: 0.85rem;
        }

        .guide-experience span {
            color: rgba(255, 255, 255, 0.6);
            margin-left: 5px;
        }

        .social-icons a {
            color: white;
            margin: 10px;
            font-size: 20px;
            transition: 0.3s;
        }

        .social-icons a:hover {
            color: #000;
            text-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        /* ========== CONTACT FORM - GRAY BACKGROUND ========== */
        .contact-form-wrapper {
            background: #e8e8e8;
            border-radius: 16px;
            padding: 25px 30px;
            margin: 30px auto;
            border: 1px solid #ccc;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            max-width: 550px;
        }

        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-header h2 {
            color: #333;
            font-size: 1.4rem;
            margin-bottom: 4px;
            font-weight: 600;
        }

        .form-header p {
            color: #555;
            font-size: 0.75rem;
        }

        .modern-form {
            width: 100%;
        }

        .input-group {
            margin-bottom: 14px;
        }

        .input-group label {
            display: block;
            color: #333;
            margin-bottom: 5px;
            font-weight: 500;
            font-size: 0.8rem;
        }

        .input-group label i {
            margin-right: 5px;
            color: #ff9800;
            font-size: 0.75rem;
        }

        .required {
            color: #ff4444;
            margin-left: 3px;
        }

        .input-group input,
        .input-group select,
        .input-group textarea {
            width: 100%;
            padding: 8px 12px;
            border: 1px solid #bbb;
            border-radius: 8px;
            background: white;
            color: #333;
            font-size: 0.85rem;
            transition: all 0.3s ease;
            font-family: inherit;
        }

        .input-group input:focus,
        .input-group select:focus,
        .input-group textarea:focus {
            outline: none;
            border-color: #ff9800;
            background: #fff;
            box-shadow: 0 0 0 2px rgba(255,152,0,0.1);
        }

        .input-group input::placeholder,
        .input-group textarea::placeholder {
            color: #999;
            font-size: 0.8rem;
        }

        .input-group select {
            cursor: pointer;
            background: white;
        }

        .input-group select option {
            background: white;
            color: #333;
        }

        .input-group textarea {
            resize: vertical;
            min-height: 80px;
        }

        /* Double column layout */
        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 14px;
        }

        /* Submit button styling */
        .submit-btn {
            width: 100%;
            background: #25D366;
            color: white;
            border: none;
            padding: 10px 18px;
            font-size: 0.85rem;
            font-weight: 600;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .submit-btn i {
            font-size: 0.9rem;
        }

        .submit-btn:hover {
            background: #128C7E;
            transform: translateY(-1px);
        }

        .required-field {
            text-align: right;
            font-size: 0.65rem;
            color: #777;
            margin-top: 8px;
        }

        .required-field span {
            color: #ff4444;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .form-row {
                grid-template-columns: 1fr;
                gap: 12px;
            }
            .contact-form-wrapper {
                padding: 20px;
                margin: 20px;
                max-width: none;
            }
            .form-header h2 {
                font-size: 1.2rem;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <!-- NAVBAR -->
        <nav class="navbar">
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

        <!-- CONTACT PAGE - MIDDLE SECTION -->
        <div class="contact-middle">
            <div class="contact-container">
                <!-- Contact Info Section -->
                <div class="contact-info-section">
                    <div class="contact-card">
                        <h2>Contact Us</h2>
                        <p>Get in touch with us for any inquiries</p>
                        
                        <div class="contact-details">
                            <div class="detail-item">
                                <i class="fas fa-map-marker-alt"></i>
                                <div>
                                    <h4>Address</h4>
                                    <span>MG Marg, Gangtok, Sikkim - 737101</span>
                                </div>
                            </div>
                            <div class="detail-item">
                                <i class="fas fa-phone-alt"></i>
                                <div>
                                    <h4>Phone</h4>
                                    <span>+91 98765 43210</span>
                                </div>
                            </div>
                            <div class="detail-item">
                                <i class="fas fa-envelope"></i>
                                <div>
                                    <h4>Email</h4>
                                    <span>info@buburiding.com</span>
                                </div>
                            </div>
                            <div class="detail-item">
                                <i class="fas fa-clock"></i>
                                <div>
                                    <h4>Working Hours</h4>
                                    <span>Mon - Sat: 9:00 AM - 6:00 PM</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- ========== CONTACT FORM WITH ASP.NET SERVER CONTROLS ========== -->
                <div class="contact-form-wrapper">
                    <div class="form-header">
                        <h2><i class="fas fa-paper-plane"></i> Send Message</h2>
                        <p>Fill the form and we'll get back to you</p>
                    </div>
                    
                    <div class="modern-form">
                        <div class="form-row">
                            <div class="input-group">
                                <label><i class="fas fa-user"></i> Your Name <span class="required">*</span></label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Full name" required="true"></asp:TextBox>
                            </div>
                            
                            <div class="input-group">
                                <label><i class="fas fa-tag"></i> Subject <span class="required">*</span></label>
                                <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control" required="true">
                                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Enquiry" Value="Enquiry"></asp:ListItem>
                                    <asp:ListItem Text="Feedback" Value="Feedback"></asp:ListItem>
                                    <asp:ListItem Text="Complaint" Value="Complaint"></asp:ListItem>
                                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="input-group">
                                <label><i class="fas fa-envelope"></i> Email <span class="required">*</span></label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="your@email.com" TextMode="Email" required="true"></asp:TextBox>
                            </div>
                            
                            <div class="input-group">
                                <label><i class="fas fa-phone"></i> Phone <span style="color:#777;">(Optional)</span></label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="+91 XXXXX XXXXX"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="input-group">
                            <label><i class="fas fa-comment"></i> Message <span class="required">*</span></label>
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="Write your message here..." TextMode="MultiLine" Rows="4" required="true"></asp:TextBox>
                        </div>
                        
                        <asp:Button ID="btnSendMessage" runat="server" Text="Send via WhatsApp" CssClass="submit-btn" OnClick="btnSendMessage_Click" />
                        
                        <div class="required-field">
                            <span>*</span> Required fields
                        </div>
                    </div>
                </div>
                
                <!-- Tourist Guides Section -->
                <div class="guides-section">
                    <div class="guides-header">
                        <h2>Our Tourist Guides</h2>
                        <p>Meet our experienced guides who will make your journey unforgettable</p>
                    </div>
                    
                    <div class="guides-grid">
                        <!-- Guide 1 -->
                        <div class="guide-card">
                            <div class="guide-image">
                                <img src="Image/WhatsApp%20Image%202026-03-27%20at%2010.02.30.jpeg" alt="Guide" />
                            </div>
                            <div class="guide-info">
                                <h3>Mr. Anuj Rai</h3>
                                <p class="guide-role">Senior Mountain Guide</p>
                                <div class="guide-contact">
                                    <i class="fas fa-phone-alt"></i>
                                    <span>+91 8617556300</span>
                                </div>
                                <div class="guide-experience">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span>12+ years</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Guide 2 -->
                        <div class="guide-card">
                            <div class="guide-image">
                                <img src="Image/WhatsApp%20Image%202026-03-27%20at%2008.41.40.jpeg" alt="Guide" />
                            </div>
                            <div class="guide-info">
                                <h3>Mr. Nima Norbu Sherpa</h3>
                                <p class="guide-role">Cultural Guide</p>
                                <div class="guide-contact">
                                    <i class="fas fa-phone-alt"></i>
                                    <span>+91 6297504598</span>
                                </div>
                                <div class="guide-experience">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <span>8+ years</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Guide 3 -->
                        <div class="guide-card">
                            <div class="guide-image">
                                <img src="Image/WhatsApp%20Image%202026-03-27%20at%2010.02.31.jpeg" alt="Guide" />
                            </div>
                            <div class="guide-info">
                                <h3>Mr. Sumeet Rai</h3>
                                <p class="guide-role">Trekking Guide</p>
                                <div class="guide-contact">
                                    <i class="fas fa-phone-alt"></i>
                                    <span>+91 7001156203</span>
                                </div>
                                <div class="guide-experience">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span>10+ years</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Guide 4 -->
                        <div class="guide-card">
                            <div class="guide-image">
                                <img src="Image/WhatsApp%20Image%202026-03-27%20at%2010.02.31%20(1).jpeg" alt="Guide" />
                            </div>
                            <div class="guide-info">
                                <h3>Mr. Abhishek Cheetri</h3>
                                <p class="guide-role">Nature Guide</p>
                                <div class="guide-contact">
                                    <i class="fas fa-phone-alt"></i>
                                    <span>+91 7001167893</span>
                                </div>
                                <div class="guide-experience">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <span>6+ years</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <div class="footer" style="background-color:black; color:white;">
            <p>Follow Us</p>
            <div class="social-icons" style="color:white;">
                <a href="https://www.instagram.com/chamling_080?igsh=MWZncXh3NW0yb3QybQ=="><i class="fab fa-instagram" style="color:white;"></i></a>
                </div>
    <p>Adventure is out there, go find it</p>
    <p style="font-size: 12px; margin-top: 10px; opacity: 0.7;">2024 Sikkim Tourism | Explore the Himalayan Beauty</p>
</div>

    </form>

    <script src="NavScript.js"></script>
    <script src="Contact.js"></script>
</body>
</html>