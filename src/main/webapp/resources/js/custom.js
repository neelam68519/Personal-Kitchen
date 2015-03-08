
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