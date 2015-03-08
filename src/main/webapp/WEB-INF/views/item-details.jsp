 <%@include file="includes/header.jsp"%>
      <!-- start details -->
      <!--details-product-slider-->
      <!-- Include the Etalage files -->
      <link rel="stylesheet" href="resources/css/etalage.css">
      <script src="resources/js/jquery.etalage.min.js"></script>
      <!-- Include the Etalage files -->
      <!--//details-product-slider-->	
   </head>
   <body>
   
      <div class="single">
         <div class="container">
            <div class="labout span_1_of_a1">
               <!-- start product_slider -->
               <ul id="etalage">
                  <li>
                     <a href="optionallink.html">
                     <img class="etalage_thumb_image" src="resources/images/home-bg2.jpg" />
                     <img class="etalage_source_image" src="resources/images/home-bg2.jpg" />
                     </a>
                  </li>
               </ul>
               <!-- end product_slider -->
            </div>
            <div class="cont1 span_2_of_a1 pull-right">
               <h3 class="m_3">${item.title}</h3>
               <h4 class="m_3">${item.description}</h4>
               <div class="ratebox" data-id="1" data-rating="2.2" style="float:right"></div>
               <div class="price_single">
                  <!-- <span class="reducedfrom">$66.00</span> -->
                  <span class="actual">&#8377; ${item.price}(Per Serving)</span>
               </div>
               <div class="btn_form">
                  <form>
                     <input type="submit" value="buy now" title="">
                  </form>
               </div>
               <p class="m_desc">${item.description}</p>
               <div class="social_single">
                  <ul list-unstyled>
                     <li class="fb"><a href="#"><span> </span></a></li>
                     <li class="tw"><a href="#"><span> </span></a></li>
                     <li class="g_plus"><a href="#"><span> </span></a></li>
                     <li class="rss"><a href="#"><span> </span></a></li>
                  </ul>
               </div>
            </div>
            <div class="clearfix"></div>
            <div class="nbs-flexisel-container">
               <div class="nbs-flexisel-inner">
                  <ul id="flexiselDemo3" class="nbs-flexisel-ul" style="left: -195.2px; display: block;">
                     <li class="nbs-flexisel-item" style="width: 195.2px;">
                        <img src="resources/images/pic9.jpg">
                        <div class="grid-flex">
                           <a href="#">Zumba</a>
                           <p>Rs 850</p>
                        </div>
                     </li>
                     <li class="nbs-flexisel-item" style="width: 195.2px;">
                        <img src="resources/images/pic8.jpg">
                        <div class="grid-flex">
                           <a href="#">Bloch</a>
                           <p>Rs 850</p>
                        </div>
                     </li>
                  </ul>
                  <div class="nbs-flexisel-nav-left" style="top: 74px;"></div>
                  <div class="nbs-flexisel-nav-right" style="top: 74px;"></div>
               </div>
            </div>
            <script type="text/javascript">
               $(window).load(function() {
                              
               });
            </script>
            <script type="text/javascript" src="resources/js/jquery.flexisel.js"></script>				
            <div class="toogle">
               <h3 class="m_3">Product Reviews</h3>
               <p class="m_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
            </div>
         </div>
         <div class="clearfix"></div>
      </div>
 <%@include file="includes/footer.jsp"%>
 