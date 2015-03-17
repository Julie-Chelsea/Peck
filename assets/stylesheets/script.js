//Place the login box

windowWidth = $(window).width();
loginPosition = windowWidth - 290 //normal loginbox full width is 270, added 10
$(".logIn").click(function(){
	$(".loginbox")
		.toggle(0)
		.css("display", "block")
		.css("left", loginPosition)
})

$(".content").click(function(){
	$(".loginbox").hide(0)
})

//Signup page
	$("#firstName").click(function(){
		$(".signupHelptext").show(500)
	})

// document.addEventListener('polymer-ready', function() {
//   var navicon = document.getElementById('navicon');
//   var drawerPanel = document.getElementById('drawerPanel');
//   navicon.addEventListener('click', function() {
//     drawerPanel.togglePanel();
//   });
// });

// //make it fullscreen on phones
// document.documentElement.requestFullscreen();