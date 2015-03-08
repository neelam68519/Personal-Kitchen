<%@include file="includes/header.jsp"%>

<div class="container" style="height: 400px;">
	<h3>
		Please login and then <a href="${forwardTo}">click to continue</a>
	</h3>

	<button class="g-signin" data-scope="email"
		data-clientid="14785241087-j8c8iipksvgknv5h61l7pg5abc4fmnmc.apps.googleusercontent.com"
		data-callback="onSignInCallback" data-theme="dark"
		data-cookiepolicy="single_host_origin"></button>

</div>
<%@include file="includes/footer.jsp"%>
