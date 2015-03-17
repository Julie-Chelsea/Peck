// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//Place the login box

// windowWidth = $(window).width();
// loginPosition = windowWidth - 290 //normal loginbox full width is 270, added 10
// $("button.logIn").click(function(){
// 	$(".loginbox")
// 		.toggle(0)
// 		.css("display", "block")
// 		.css("left", "500px")
// })

// $(".navPeck").click(function(){
// 	$(this).hide(500)
// })

// $(".content").click(function(){
// 	$(".loginbox").hide(0)
// })

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