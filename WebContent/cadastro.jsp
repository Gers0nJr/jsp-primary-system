<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        <!-- Mascara Telefone -->
        <script type="text/javascript" src="js/date/jquery-1.11.3.min.js"></script>
        <script src="js/date/bootstrap-datepicker.min.js"></script>
        <script src="js/mascara/mascara.js"></script>
        <link rel="stylesheet" href="css/date/bootstrap-datepicker3.css"/>
        
        <script>
            $(document).ready(function(){
                    var date_input=$('input[name="date"]'); //our date input has the name "date"
                    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                    date_input.datepicker({
                            format: 'dd/mm/yyyy',
                            container: container,
                            todayHighlight: true,
                            autoclose: true,
                    })
            })
        </script>
         <!-- Fim mascara Telefone -->   
         
         <!--Gerar senha-->
           <script src="js/gerarsenha/gerarsenha.js" type="text/javascript"></script>
         <!--Fim gerar senha-->
         
         <!--Modal-->

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <!--Fim Modal-->
         
    </head>

        <body>
        
        <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Sistema de Assinaturas Digitais</a>
          </div>
        </div>
      </nav>
        
        <div class="container">
                <nav class="well well-sm">
                <div class="container">  
                  <ul class="nav navbar-nav">
                      <li class="active"><a class="btn" href="painel.jsp"><i class="glyphicon glyphicon glyphicon-hand-left"></i> Voltar</a></li>    
                    
                  </ul>
                     </div>
              </nav>

            <form name="myform" class="form-horizontal" action="gravarCadastro" method="post">
                    <div class="control-group">
                      <label class="control-label" for="inputNome">Nome Completo</label>
                      <div class="controls">
                        <input type="text" name="usuario" id="inputNome" class="form-control" required="" autofocus="" onBlur="if(this.value=='')this.value=''" onFocus="if(this.value=='')this.value='">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputNomeex">Nome de exibição</label>
                      <div class="controls">
                        <input type="text" name="nome" id="inputNomeex" value="- HBBrokers" class="form-control" required="" autofocus="" onBlur="if(this.value=='')this.value=''" onFocus="if(this.value=='')this.value='">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputDepartamento">Departamento</label>
                      <div class="controls">
                        <input type="text" name="departamento" id="inputDepartamento" value="Corretor - Associado" class="form-control" required="" autofocus="" onBlur="if(this.value=='')this.value=''" onFocus="if(this.value=='')this.value='">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputCelular">Celular</label>
                      <div class="controls">
                        <input type="text" name="ccelular" id="ccelular" class="form-control" onkeydown="celular( this )" onkeyup="celular( this )">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputTelefone">Telefone</label>
                      <div class="controls">
                          <input type="text" name="ttelefone" id="ttelefone" class="form-control" onkeydown="telefone( this )" onkeyup="telefone( this )"/>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputEmail_Emp">Email Empresárial</label>
                      <div class="controls">
                          <input type="email" name="email_particular" id="inputEmail_Emp" class="form-control" required="" autofocus="" onBlur="if(this.value=='')this.value=''" onFocus="if(this.value=='')this.value='">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="inputEmail_Pess">Email Pessoal</label>
                      <div class="controls">
                          <input type="email" name="email_pessoal" id="inputEmail_Pess" class="form-control" required="" autofocus="" onBlur="if(this.value=='')this.value=''" onFocus="if(this.value=='')this.value='">
                      </div>
                    </div>

                    <div class="control-group">
                    
                                <div style="display:none;"> 
                                    <input type="checkbox" name="firstNumber" checked><!--Número-->
                                    <input type="checkbox" name=firstLower checked><!--Minúsculo-->
                                    <input type="checkbox" name=firstUpper checked><!--Maiúsculo-->
                                    <input type="checkbox" name=firstOther><!--Outro-->
                                    <input type="checkbox" name=latterNumber checked><!--Número-->
                                    <input type="checkbox" name=latterLower checked><!--Minúsculo-->
                                    <input type="checkbox" name=latterUpper checked><!--Maiúsculo-->
                                    <input type=text name=latterOther><!--Outro-->
                                    <input type=text name=passwordLength value="8">
                                    <input type=text name=extraChars>
                                </div>    
                        
                    <label class="control-label" for="inputSenha">Senha</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="senha" name="senha" required="" autofocus="" onBlur="if(this.value=='')this.value=''" onFocus="if(this.value=='')this.value='">
                            <span class="input-group-btn">
                                <button class="btn btn-secondary" type=button value="Gerar Senha" onClick="document.myform.senha.value =
                                getPassword(document.myform.passwordLength.value, document.myform.extraChars.value,
                                document.myform.firstNumber.checked, document.myform.firstLower.checked,
                                document.myform.firstUpper.checked, document.myform.firstOther.checked,
                                document.myform.latterNumber.checked, document.myform.latterLower.checked,
                                document.myform.latterUpper.checked, document.myform.latterOther.checked);">&nbsp<i class="glyphicon glyphicon-new-window"></i>&nbsp</button>
                            </span>
                    </div>

                    </div>

                    <div class="control-group">
                      <div class="controls">
                          </br>
                          <button type="submit" class="btn btn-info btn-lg btn-block">Salvar</button>
                      </div>
                    </div>
     
                </form>
            </br>
            
                              
        </div>   
    </body>
</html>