<%@include file="includes/header.jsp"%>
<!-- start details -->
<!--details-product-slider-->
<!-- Include the Etalage files -->
<link rel="stylesheet" href="resources/css/etalage.css">
<script src="resources/js/jquery.etalage.min.js"></script>
</head>
<body>

  <div class="container">
   <div class="row">
    <div class="col-md-12">
      <h1> Submit Food Item Details </h1>
   </div>
 </div>

<div class="row" style="margin:2%">
  <form class="form-horizontal" method="post" enctype='multipart/form-data' action="add-item">
  <div class="col-md-6">
   <fieldset>
   <legend>Personal Details</legend>
   <div class="form-group">
    <label for="name" class="col-sm-3 control-label">Full Name</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" id="name" name="username" placeholder="Neelam">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="phone">Mobile No.</label>
    <div class="col-sm-9">
      <input id="phone" name="phone" type="tel" pattern="[789][0-9]{9}" placeholder="9999888822" class="form-control" required>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_line1">Address</label>
    <div class="col-sm-9">
      <input id="addr_line1" name="addr_line1" type="text" placeholder="K-1, First Floor" class="form-control" required>
      <p class="help-block"><b>*Will be used as Pick Up Address for the food item</b></p>
    </div>
  </div>
   </fieldset>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_line2"></label>
    <div class="col-sm-9">
      <input id="addr_line2" name="addr_line2" type="text" placeholder="Sector 18" class="form-control" required>
      <p class="help-block">Locality</p>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_city">City</label>
    <div class="col-sm-9">
      <input id="addr_city" name="addr_city" type="text" placeholder="Gurgaon" class="form-control" required>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_state">State</label>
    <div class="col-sm-9">
      <input id="addr_state" name="addr_state" type="text" placeholder="Haryana" class="form-control" required>
    </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
    <label class="col-sm-3 control-label" for="addr_pincode">Pincode</label>
    <div class="col-sm-9">
      <input id="addr_pincode" name="addr_pincode" type="text" placeholder="122001" class="form-control" required>
    </div>
  </div>
</fieldset>
</div>


<div class="col-md-6">
   <fieldset>
   <legend>Food Item Details</legend>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_title">Upload Image</label>
    <div class="col-sm-9">
      <input id="item_title" name="item_title" type="file">
    </div>
  </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_title">Title</label>
    <div class="col-sm-9">
      <input id="item_title" name="item_title" type="text" placeholder="Dish Name" class="form-control" required>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-3 control-label" for="item_desc">Description</label>
    <div class="col-sm-9">
      <textarea id="item_desc" name="item_desc" class="form-control" rows="3"></textarea>
    </div>
  </div>
  
  <div class="form-group">
    <label class="col-sm-3 control-label" for="item_desc">Cuisine</label>
    <div class="col-sm-9">
      <input id="item_cuisine" name="item_cuisine" type="text" placeholder="Cuisine" class="form-control">
    </div>
  </div>

 <div class="form-group">
        <label for="item_price" class="col-sm-3 control-label">Price</label>
    <div class="input-group col-sm-9"> 
        <span class="input-group-addon">&#8377;</span>
        <input type="number" value="100" min="1" step="1" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control currency" id="item_price" name="item_price" required/>
    </div>
    <div class="col-sm-9 col-sm-offset-3">
    <p class="help-block"><b>*Price per serving</b></p>
  </div>
  </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_quant">Max Servings</label>
    <div class="col-sm-9">
      <input id="item_quant" name="item_quant" type="number" placeholder="Maximum number of servings you plan on cooking" class="form-control" required>
      <p class="help-block"><b>*Orders will not be accepted once the limit is reached</b></p>
    </div>
  </div>

    <div class="form-group">
    <label class="col-sm-3 control-label" for="item_valid_from">Valid From</label>
    <div class="col-sm-9">
      <input id="item_valid_from" name="item_valid_from" type="datetime-local" class="form-control" required>
      <p class="help-block"><b>*Orders will be accepted only after given time</b></p>
    </div>
  </div>

   <div class="form-group">
    <label class="col-sm-3 control-label" for="item_valid_till">Valid Till</label>
    <div class="col-sm-9">
      <input id="item_valid_till" name="item_valid_till" type="datetime-local" class="form-control" required>
      <p class="help-block"><b>*Orders will not be accepted after given time</b></p>
    </div>
  </div>


</fieldset>
  <div class="form-group">
    <div class="col-sm-offset-8 col-sm-4">
      <button type="submit" class="btn btn-danger">Confirm</button>
    </div>
  </div>
</div>
</form>
</div>
</div>

<%@include file="includes/footer.jsp"%>
