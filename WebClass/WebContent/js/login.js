$(document).ready(function() {
  $("#LoginForm").submit(function(event) {
    //submit되는 것을 막기
    event.preventDefault();

    //id, password 값 가져오기
    var id = $("#id").val();
    var pwd = $("#pwd").val();

    // 서버로 post 방식 전송
    $.post("http://httpbin.org/post", {
      id : id,
      pwd : pwd
    }, function(data) {
      // 서버로부터 응답을 받으면
      //alert(data.form.id + '님 로그인되었습니다.');
      var myModal= $('#Login');
      myModal.modal();
      myModal.find('.modal-body').text(data.form.id + '님 로그인되었습니다.');
      
    });
  });
});
