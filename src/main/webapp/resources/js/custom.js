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
	 for (var i=0; i < resp.emails.length; i++) {
		 if (resp.emails[i].type === 'account') {
			 primaryEmail = resp.emails[i].value;
		 }
	 }
	$.post("login", {
		email : primaryEmail,
		name : resp.displayName
	}, function(data, status) {
		alert("Data: " + data + "\nStatus: " + status);
	});
}

/*
 * This is out callback function for when a rating is submitted
 */
function rateAlert(id, rating) {
	// alert( 'Rating for '+id+' is '+rating+' stars!' );
}

function sticky_relocate() {
	var window_top = $(window).scrollTop();
	var div_top = $('#sticky-anchor').offset().top;
	if (window_top > div_top) {
		$('#sticky').addClass('stick');
	} else {
		$('#sticky').removeClass('stick');
	}
}

/*
 * Here we initialize raterater on our rating boxes
 */
$(function() {

	$(window).scroll(sticky_relocate);
	sticky_relocate();

	$('.ratebox').raterater({
		submitFunction : 'rateAlert',
		allowChange : true,
		starWidth : 20,
		spaceWidth : 5,
		numStars : 5
	});

	$("#flexiselDemo3").flexisel({
		visibleItems : 3,
		animationSpeed : 1000,
		autoPlay : true,
		autoPlaySpeed : 3000,
		pauseOnHover : true,
		enableResponsiveBreakpoints : true,
		responsiveBreakpoints : {
			portrait : {
				changePoint : 480,
				visibleItems : 1
			},
			landscape : {
				changePoint : 640,
				visibleItems : 2
			},
			tablet : {
				changePoint : 768,
				visibleItems : 3
			}
		}
	});

	// thumbnail preview image - details page
	$('#etalage')
			.etalage(
					{
						thumb_image_width : 300,
						thumb_image_height : 400,

						show_hint : true,
						click_callback : function(image_anchor, instance_id) {
							alert('Callback example:\nYou clicked on an image with the anchor: "'
									+ image_anchor
									+ '"\n(in Etalage instance: "'
									+ instance_id + '")');
						}
					});

	// This is for the dropdown list example:
	$('.dropdownlist').change(function() {
		etalage_show($(this).find('option:selected').attr('class'));
	});

});