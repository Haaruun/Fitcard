$(function(){
	$('.hamburger').click(function(){
		$('.ham_one').toggleClass('one');
		$('.ham_two').toggleClass('two');
		$('.ham_three').toggleClass('three');
		$(this).toggleClass('ham');
		$('.menu').toggleClass('menu_slide');

	});
});