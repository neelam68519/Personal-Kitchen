<%@include file="includes/header.jsp"%>

<div>
	<h2 style="color: green;">${successMessage}</h2>
	<br />
	<h2 style="color: red;">${errorMessage}</h2>
</div>
<div class="col-md-6 col-md-offset-3" style="padding: 2% 0%"
	align="center">
	<a class='btn btn-lg main-button' href="">Go back to home page Food</a>

	<a class='btn btn-lg main-button' href="sell-item">Add new item</a>
</div>
<%@include file="includes/footer.jsp"%>
