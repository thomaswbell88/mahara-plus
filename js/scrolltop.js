$j(document).ready(function(){

		// scroll body to 0px on click
		$j('.viewheadertop').click(function () {
			$j('body,html').animate({
				scrollTop: 0
			}, 300);
			return false;
		});
});
