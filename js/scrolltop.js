$j(document).ready(function(){

		// scroll body to 0px on click
		$j('.viewheadertop').click(function (e) {
			$j('body,html').animate({
				scrollTop: 0
			}, 300);
			return false;
		});
		$j(".viewheadertop a").click(function(e){
    		e.stopPropagation();
		});
});

