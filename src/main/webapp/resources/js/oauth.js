//function signinCallback(authResult) {
//  if (authResult['status']['signed_in']) {
//    // Update the app to reflect a signed in user
//    // Hide the sign-in button now that the user is authorized, for example:
//    document.getElementById('signinButton').setAttribute('style', 'display: none');
//  } else {
//    // Update the app to reflect a signed out user
//    // Possible error values:
//    //   "user_signed_out" - User is signed-out
//    //   "access_denied" - User denied access to your app
//    //   "immediate_failed" - Could not automatically log in the user
//    console.log('Sign-in state: ' + authResult['error']);
//  }
//}

function onSignInCallback(resp) {
	gapi.client.load('plus', 'v1', apiClientLoaded);
}

/**
 * Sets up an API call after the Google API client loads.
 */
function apiClientLoaded() {
	gapi.client.plus.people.get({
		userId : 'me'
	}).execute(handleEmailResponse);
}

/**
 * Response callback for when the API client receives a response.
 * 
 * @param resp
 *            The API response object with the user email and profile
 *            information.
 */
function handleEmailResponse(resp) {
	 var primaryEmail;
	 console.log(resp);
	 for (var i=0; i < resp.emails.length; i++) {
		 if (resp.emails[i].type === 'account') {
			 primaryEmail = resp.emails[i].value;
		 }
	 }
	$.post("login", {
		email : primaryEmail,
		name : resp.displayName
	}, function(data, status) {
		alert(data);
		if(data == "logged-in")
			location.reload();
	});
}