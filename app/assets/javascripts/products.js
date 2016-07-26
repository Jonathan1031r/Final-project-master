

$(document).ready(function (){
	$(".js-img-btn").on("click", function(event){
		event.preventDefault();
		var description = $(event.currentTarget).data("description")
		var title = $(event.currentTarget).data("title")
		var price = $(event.currentTarget).data("price")
		var image = $(event.currentTarget).data("image")
		showDetails()



function showDetails (){
	
	console.log(title)

	$(".js-tree-description").text(description)
	$(".js-tree-title").text(title)
	$(".js-tree-price").text(price)
	$(".js-tree-img").prop('src', image)
	
	$(".js-tree-modal").modal("show")
}





	});
});
