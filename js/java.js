$(document).ready( function() {
    $('[data-toggle="tooltip"]').tooltip();
});

$("#enviar").click(function(e){
  //e.preventDefault();
})

$(function() {
  $("form[name='signupform']").validate({

    rules: {
      nome: "required",
      email: "required",
      email: {
        required: true,
        email: true
      },
      password: {
        required: true,
        minlength: 5,
        maxlength: 10
      }
    },
    messages: {
      nome: "Please enter your firstname",
      password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
        maxlength: "Your password must be up to 10 characters long"
      },
      email: "Please enter a valid email address"
    },
    submitHandler: function(form) {
      $("#enviar").click(function() {
          var email = $("#email").val();
          var password = $("#password").val();
          var nome = $("#nome").val();
          var data = $("#data").val();
          var dataString = "email=" + email + "&password=" + password + "&nome=" + nome + "&data=" + data +"&enviar=";
          if ($.trim(email).length > 0 & $.trim(password).length > 0 & $.trim(nome).length > 0 & $.trim(data).length > 0) {
              $.ajax({
                  type: "POST",
                  url: "http://localhost/Projeto2/php/registar.php",
                  data: dataString,
                  crossDomain: true,
                  cache: false,
                  beforeSend: function() {
                      $("#enviar").val('Connecting...');
                  },
                  success: function(data) {
                      if (data == "success") {
                          alert("inserted");
                          $("#enviar").val('submit');
                      } else if (data == "error") {
                          alert("error");
                      }
                  }
              });
          }
          return false;
      });
    }
  });
});
