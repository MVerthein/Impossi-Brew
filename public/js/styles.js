$(document).ready(function(){

	$('.cat-name').on('click', '.ergcat-link', function(event){
		event.preventDefault();
		var link = $(this).attr('href');
		var thing = $(this).parent();
		debugger;
		$.ajax({
			type: 'GET',
			url: link,
		}).done(function(styledata){
			thing.append(styledata);
		});
	});

	$('.reg-form').on('submit', function(event){
		event.preventDefault();
		var data = $(this).serialize();
		var holder = $(this).parent().next().next();
		debugger;
		$.ajax({
			type: 'POST',
			url: '/location',
			data: data
		}).done(function(response){
			holder.append(response);
		});
	});

});

