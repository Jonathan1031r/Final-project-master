
$(document).on("turbolinks:load", function (){
	$(".js-img-btn").on("click", function(event){
		event.preventDefault();
		var description = $(event.currentTarget).data("description")
		$("#product-form-description").val(description)
		var title = $(event.currentTarget).data("title")
		$("#product-form-title").val(title)
		var price = $(event.currentTarget).data("price")
		$("#product-form-price").val(price)
		var image = $(event.currentTarget).data("image")
		var id = $(event.currentTarget).data("id")
		sessionStorage.setItem("the_product_id", id)
		sessionStorage.setItem("the_product_description", description)
		sessionStorage.setItem("the_product_title", title)
		sessionStorage.setItem("the_product_image", image)
		sessionStorage.setItem("the_product_price", price)
		showTreeDetails()

		function showTreeDetails (){

			console.log(title)

			$(".js-tree-description").text(description)
			$(".js-tree-title").text(title)
			$(".js-tree-price").text(price)
			$(".js-tree-img").prop('src', image)

			$(".js-tree-modal").modal("show")

		}
	});
});


$(document).on("turbolinks:load", function (){
	$(".js-about-btn").on("click", function (event){
		showAboutModal()

		function showAboutModal (){
			$(".about-modal").modal("show")
		}
	})
});

$(document).on("turbolinks:load", function (){
	$(".js-show-last-will").on("click", function(event){
		event.preventDefault();
		lastWillForm()
	})


	function lastWillForm (){
		$(".js-last-will-modal").modal("show")

	}	
});

$(document).on("turbolinks:load", function (){
	$(".js-submit-comment").on("click", function (event){
		event.preventDefault();
		var name = $(".js-name").val();

		var comment = $(".js-comment").val();
		addComment(name, comment)
	});

	function addComment (name, comment){
		console.log(name);
		console.log(comment);
		//save data
		$.ajax({
			method: "POST",
			url: "/api/products/comments",
			data: { author_name: name, content: comment }
		})
		// .done(function( msg ) {
		// 	alert( "Data Saved: " + msg );


		// });
		updateComments(name, comment);
	}	


	function updateComments (name, comments){
		$(".js-comments").prepend(`<div><p class="css-comments">`+comments+`</p></div>`)
		$(".js-name").prepend(`<p class="css-comments">-`+name+`</p>`)
	}
});


