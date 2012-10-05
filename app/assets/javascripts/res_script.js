$(function(){
	$(".tabs").delegate(".tab", "click", function(){
		$(".tabs .tab").removeClass("selected");
		$(this).addClass("selected",0);
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
		$elem = $(this)
		$(".res_body table tr").removeClass("selrow")
		$("#shuttle_row_"+$elem.data("sid")).addClass("selrow",300)
		
		if($(".selections:visible").length == 0){
			$(".page_container").animate({width:800}, 300,function(){
				$(".selections #shuttlenum").html($elem.data("snum"))
				$(".selections #shuttledep").html($elem.data("dep"))
				$(".selections").show("slide",{}, 300);
				$("#reservation_shuttle_id").val($elem.data("sid"))
			});
		}else{
			$(".sub_info").animate({opacity:0},300,function(){
				$(this).find("#shuttlenum").html($elem.data("snum"))
				$(this).find("#shuttledep").html($elem.data("dep"))
				$(this).animate({opacity:1},300)
			});
		}
		
		$("form#new_reservation").submit(function() {
			$elem = $(this);
			$(".page_container").hide("blind",500,function(){
				
				$.ajax({
				  url: '/reservations',
				  type: 'POST',
				  dataType: 'html',
				  data: $elem.serialize(),
					beforeSend: function(){
					
					},
				  complete: function(xhr, textStatus) {
				    //called when complete
				  },
				  success: function(data, textStatus, xhr) {
					  $(".page_container").css("width",600);
				    $(".page_container").html(data).show("slide");
				  },
				  error: function(xhr, textStatus, errorThrown) {
				    //called when there is an error
				  }
				});
			})
		  return false;
		});
	})
	
	$("#reservation_phone").mask("(999) 999-9999")
});