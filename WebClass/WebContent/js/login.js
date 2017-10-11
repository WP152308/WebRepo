$(document).ready(function() {
  $("#LoginForm").submit(function(event) {
    //submit되는 것을 막기
    event.preventDefault();

    //id, password 값 가져오기
    var id = $("#id").val();
    var pwd = $("#pwd").val();

    // 서버로 post 방식 전송
    $.post("/WebClass/bloglogin", {
      id : id,
      pwd : pwd
    }, function(data) {
    	if(data.msg == "error"){
	      var myModal= $('#Login');
	      myModal.modal();
	      myModal.find('.modal-body').text('로그인에 실패했습니다.');
    	}
    	else {
		      location.reload();
    	}
      
    });
  });
});
