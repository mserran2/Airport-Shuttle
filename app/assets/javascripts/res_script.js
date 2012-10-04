$(function(){
	$(".tabs").delegate(".tab", "click", function(){
		$(".tabs .tab").removeClass("selected");
		$(this).addClass("selected");
		$elem = $(this)
		$(".res_body").fadeOut(function(){
			$.ajax({
				url: "/shuttles/shuttles_by_day/"+$elem.data("date"),
				type: 'GET',
				dataType: 'html',
				success: function(data){
					$(".res_body").html(data)
					$(".res_body").fadeIn()
				}
			});
		});
	});
	
	$(".res_body").delegate(".shuttle_select", "click", function(){
		$(".page_container").animate({width:800}, 300,function(){
			$(".selections").show("blind",{}, 300)
		});
	})
});