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
               <img src="/data/images/${item.image_url}" height="100%" width="100%">
            </div>
            <div class="col-md-6">
               <div class="well">
                  Order Summary Here
                  <br>
                  Price: ${item.price}
                  <br>
                  Select quantity:
                  <br>
                  Cash on delivery
               </div>
            </div>
         </div>
         <div class="row" style="margin:2%">
            <form class="form-horizontal">
               <legend>Confirm Your Details</legend>
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Full Name</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="name" value="${user.name}">
    </div>
  </div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="email">Email</label>
  <div class="col-sm-4">
    <input id="email" name="email" type="email" value="${user.email}" class="form-control">
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="phone">Mobile No.</label>
  <div class="col-sm-4">
    <input id="phone" name="phone" type="text" value="${user.phone}" class="form-control" required="">
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_line1">Address</label>
  <div class="col-sm-4">
    <input id="addr_line1" name="addr_line1" type="text" value="${user.address.addressLine1}" class="form-control" required="">
    <p class="help-block">House Number, Floor</p>
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_line2"></label>
  <div class="col-sm-4">
    <input id="addr_line2" name="addr_line2" type="text" value="${user.address.locality}" class="form-control" required="">
    <p class="help-block">Locality</p>
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_city">City</label>
  <div class="col-sm-4">
    <input id="addr_city" name="addr_city" type="text" value="${user.address.city}" class="form-control" required="">
  </div>
</div>
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_state">State</label>
  <div class="col-sm-4">
    <input id="addr_state" name="addr_state" type="text" value="${user.address.state}" class="form-control" required="">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-sm-2 control-label" for="addr_pincode">Pincode</label>
  <div class="col-sm-4">
    <input id="addr_pincode" name="addr_pincode" type="text" value="${user.address.pincode}"  class="form-control">
    
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