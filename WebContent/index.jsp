<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <title></title>
           <style>
            
        @import "bourbon";

        body {
                background: #eee !important;	
        }

        .wrapper {	
          margin-top: 80px;
          margin-bottom: 80px;
        }
        
        .button5 {background-color: #000000;} /* Black */

        .form-signin {
            
            border-top-left-radius: 2em;
            border-top-right-radius: 2em;
            border-bottom-right-radius: 2em;
            border-bottom-left-radius: 2em;
            
          max-width: 380px;
          padding: 15px 35px 45px;
          margin: 0 auto;
          background-color: #fff;
          border: 1px solid rgba(0,0,0,0.1);  

          .form-signin-heading,
                .checkbox {
                  margin-bottom: 30px;
                }

                .checkbox {
                  font-weight: normal;
                }

                .form-control {
                  position: relative;
                  font-size: 16px;
                  height: auto;
                  padding: 10px;


                        &:focus {
                          z-index: 2;
                        }
                }

                input[type="text"] {
                  margin-bottom: -1px;
                  border-bottom-left-radius: 0;
                  border-bottom-right-radius: 0;
                }

                input[type="password"] {
                  margin-bottom: 20px;
                  border-top-left-radius: 0;
                  border-top-right-radius: 0;
                }
        }
    </style>
    </head>

         <body class="dt-example">

        <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Sistema de Assinaturas Digitais</a>
          </div>
        </div>
      </nav>
        <!--Login-->
        <div class="container-fluid">
        <div class="wrapper">
            <form class="form-signin" action="logarUsuario" method="post">       
                 <h2 align="left"><i class="glyphicon glyphicon glyphicon glyphicon-user"></i> </h2>
                </br>
              <input type="text" class="form-control" name="login" placeholder="Digite o Login" required="" autofocus="" onBlur="if(this.value=='')this.value=''" onFocus="if(this.value=='')this.value='"/>
              <input type="password" class="form-control" name="senha" placeholder="Digite a Senha" required="" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value=''"/>      
              </br>
              <button class="btn btn-lg btn-block button5" type="submit"><font color="white">Entrar</font></button>   
            </form>
        </div>
        </div>
    </body>
</html>