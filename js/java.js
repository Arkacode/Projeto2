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
      data: {
        required: true,
        date: true,
      },
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
      $("#insert").click(function() {
        var email = $("#email").val();
        var password = $("#password").val();
        var nome = $("#nome").val();
        var data = $("#data").val();
        var dataString = "email=" + email + "&password=" + password + "&nome=" + nome + "&data=" + data + "&insert=";
        if ($.trim(email).length > 0 & $.trim(password).length > 0 & $.trim(nome).length > 0 & $.trim(data).length > 0) {
          $.ajax({
            type: "POST",
            url: "http://192.168.1.6/Projeto2/php/registar.php",
            data: dataString,
            crossDomain: true,
            cache: false,
            success: function(data) {
              if (data == "success") {
                alert("Registado com sucesso");
                $("#insert").val('Enviado');
              } else if (data == "error") {
                alert("Erro ao registar");
              }
            }
          });
        }
        return false;
      });
    }
  });
});

$(function() {
  $("form[name='loginform']").validate({
    rules: {
      loginemail: {
        required: true,
        email: true
      },
      loginpassword: {
        required: true,
        minlength: 5,
        maxlength: 10
      }
    },
    messages: {
      loginpassword: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long",
        maxlength: "Your password must be up to 10 characters long"
      },
<<<<<<< HEAD
      loginemail: {
        required: "Please enter a valid email address",
        email: "Tem de ser email"
      }
    },
    submitHandler: function(form) {
        var email = $("#loginemail").val();
        var password = $("#loginpassword").val();
        var dataString = "loginemail=" + email + "&loginpassword=" + password;
        if ($.trim(email).length > 0 & $.trim(password).length > 0) {
            $.ajax({
                type: "POST",
                url: "http://192.168.1.6/Projeto2/php/login.php",
                data: dataString,
                crossDomain: true,
                cache: false,
                beforeSend: function() {
                    $("#btn_login").text('Connecting...');
                },
                success: function(data) {
                    if (data == "success") {
                        alert("Logado");
                        localStorage.login="true";
                        localStorage.email=email;
                        window.location.href='empregos.html';
                    } else{
                        alert("error =>"+data);
                    }
                }
            });
        }
        return false;
      }
    });
  });
=======
      loginemail: "Please enter a valid email address"
    }
  });
});

$("#btn_login").click(function(){
  var email=$("#loginemail").val();
  var password=$("#loginpassword").val();
  var dataString="loginemail="+email+"&loginpassword="+password+"&btn_login=";
  if($.trim(email).length>0 & $.trim(password).length>0)
  {
    $.ajax({
      type: "POST",
      url: "http://192.168.1.6/Projeto2/php/login.php",
      data: dataString,
      crossDomain: true,
      cache: false,
      beforeSend: function(){ $("#btn_login").html('Connecting...');},
      success: function(data){
        if(data=="success")
        {
          localStorage.login="true";
          localStorage.email=email;
          window.location.href = "index.html";
        }
        else if(data="failed")
        {
          alert("Login error");
          $("#btn_login").html('Login');
        }
      }
    });
  }return false;
});
>>>>>>> origin/master
