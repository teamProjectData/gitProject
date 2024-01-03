$(function () {

	$("#joinBtn").click(function(){
		let upw = $("#upw").val().trim();
		let reupw = $("#reupw").val().trim();
		
//		console.log("upw : " + upw);
//		console.log("reupw : " + reupw);
		
		if(upw != reupw){
			alert("비밀번호가 다릅니다.")
			$("#reupw").focus();
			return false;
		} 
	})


});