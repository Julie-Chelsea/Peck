var clouds = ['cloud1', 'cloud2', 'cloud3', 'cloud4', 'cloud5'];

// function clouds () {
// 	var choice = Math.floor(Math.random() * clouds.length);
// 	$("<img src='layout/" + choice + ".svg'>")
// 		.appendTo("div.title")
// 		.css({
// 			"top": "",
// 			"left": "",
			
// 		})
// }

//Korean page javascript
var lessons = $("div.lessonimage").length;

for (var i = 0; i < lessons; i++){
	if (i%11 == 0){
		$("div.lessonimage").eq(i).css({
			"background-color": "#5ac7d9"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#09bcd3"
		})
	}

	if (i%11 == 1){
		$("div.lessonimage").eq(i).css({
			"background-color": "#66bb6a"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#4cae4e"
		})
	}

	if (i%11 == 2){
		$("div.lessonimage").eq(i).css({
			"background-color": "#9bcb65"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#8bc248"
		})
	}

	if (i%11 == 3){
		$("div.lessonimage").eq(i).css({
			"background-color": "#ffd54e"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#fdc010"
		})
	}

	if (i%11 == 4){
		$("div.lessonimage").eq(i).css({
			"background-color": "#fcb64d"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#f8971c"
		})
	}

	if (i%11 == 5){
		$("div.lessonimage").eq(i).css({
			"background-color": "#f26f46"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#f0592b"
		})
	}

	if (i%11 == 6){
		$("div.lessonimage").eq(i).css({
			"background-color": "#ef4437"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#d32e2e"
		})
	}

	if (i%11 == 7){
		$("div.lessonimage").eq(i).css({
			"background-color": "#f38fb1"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#f06291"
		})
	}

	if (i%11 == 8){
		$("div.lessonimage").eq(i).css({
			"background-color": "#ab6bac"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#8f3e97"
		})
	}

	if (i%11 == 9){
		$("div.lessonimage").eq(i).css({
			"background-color": "#5e6ab1"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#4554a4"
		})
	}

	if (i%11 == 10){
		$("div.lessonimage").eq(i).css({
			"background-color": "#43b3e6"
		})
		$("div.lessontitle").eq(i).css({
			"background-color": "#38a4dc"
		})
	}
}