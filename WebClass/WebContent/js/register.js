$(document).ready(function() {
    $("#RegisterForm").submit(function(event) {
      //submit되는 것을 막기
      event.preventDefault();
  
      //id, password 값 가져오기
      var grade = $("#grade").val();
      var Class = $("Class").val();
      var number = $("#number").val();
      var name = $("#name").val();
  
      // 서버로 post 방식 전송
      $.post("http://httpbin.org/post", {
        grade : grade,
        Class : Class,
        number : number,
        name : name
      }, function(data) {
        // 서버로부터 응답을 받으면
        //alert(data.form.id + '님 로그인되었습니다.');
        var myModal= $('#register');
        myModal.modal();
        myModal.find('.modal-body').text(data.form.name + '님 회원가입되었습니다.');
        
      });
    });
  });
  