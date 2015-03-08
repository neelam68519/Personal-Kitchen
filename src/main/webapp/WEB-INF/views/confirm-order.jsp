 <%@include file="includes/header.jsp"%>
       <!--details-product-slider-->
      <!-- Include the Etalage files -->
      <link rel="stylesheet" href="resources/css/etalage.css">
      <script src="resources/js/jquery.etalage.min.js"></script>
   </head>
   <body>
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <h1> Order Summary </h1>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6">
               <img src="resources/images/home-bg2.jpg" height="100%" width="100%">
            </div>
            <div class="col-md-6">
               <div class="well">
                  Order Summary Here
               </div>
            </div>
         </div>
         <div class="row" style="margin:2%">
            <form class="form-horizontal">
               <legend>Confirm Your Details</legend>
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Full Name</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="name" placeholder="Neelam">
    </div>
  </div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="email">Email</label>
  <div class="col-sm-4">
    <input id="email" name="email" type="email" placeholder="akash@gmail.com" class="form-control">
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="phone">Mobile No.</label>
  <div class="col-sm-4">
    <input id="phone" name="phone" type="text" placeholder="9999888822" class="form-control" required="">
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_line1">Address</label>
  <div class="col-sm-4">
    <input id="addr_line1" name="addr_line1" type="text" placeholder="K-1, First Floor" class="form-control" required="">
    <p class="help-block">House Number, Floor</p>
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_line2"></label>
  <div class="col-sm-4">
    <input id="addr_line2" name="addr_line2" type="text" placeholder="Sector 18" class="form-control" required="">
    <p class="help-block">Locality</p>
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_city">City</label>
  <div class="col-sm-4">
    <input id="addr_city" name="addr_city" type="text" placeholder="Gurgaon" class="form-control" required="">
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_state">State</label>
  <div class="col-sm-4">
    <input id="addr_state" name="addr_state" type="text" placeholder="Haryana" class="form-control" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_pincode">Pincode</label>
  <div class="col-sm-4">
    <input id="addr_pincode" name="addr_pincode" type="text" placeholder="122001" class="form-control">
    
  </div>
</div>
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-8">
      <button type="submit" class="btn btn-default">Confirm Order</button>
    </div>
  </div>
</form>

         </div>
      </div>
<%@include file="includes/footer.jsp"%>