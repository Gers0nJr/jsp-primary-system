<%@page import="java.util.List"%>
<%@page import="br.com.gerson.modelo.Dados"%>
<%@page import="br.com.gerson.dao.DadosDao"%>

<% 
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
    
    String login=(String)session.getAttribute("login");
    if(login == null){
       response.sendRedirect("/SDA/index.jsp"); 
    }
    
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Assinaturas</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

        <!--Modal-->

	        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <!--Fim Modal-->

        <!-- DataTable -->
        
        <link href="css/table/bootstrap.min.css" rel="stylesheet">
        <link href="css/table/dataTables.bootstrap.css" rel="stylesheet">
        <link href="css/table/dataTables.responsive.css" rel="stylesheet">
    
        <script src="js/table/jquery-1.11.1.min.js"></script>
        <script src="js/table/jquery.dataTables.min.js"></script>
        <script src="js/table/dataTables.responsive.min.js"></script>
        <script src="js/table/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function() {
                $('#example').dataTable({
                    responsive: true
                });
            });
        </script>
        
        <!-- DataTable -->

    </head>

    <body class="dt-example">

        <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="painel.jsp">Sistema de Assinaturas Digitais</a>
          </div>
          <ul class="nav navbar-nav">
              <!--<li class="active" ><a href="cadastro.jsp">Novo usuário</a></li>-->
          </ul>
          <ul class="nav navbar-nav navbar-right">
             <li><a class="btn" href="cadastro.jsp"><i class="glyphicon glyphicon glyphicon-plus"></i> Novo Usuário</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Olá <%out.print(""+login+"");%></a></li>
            <!--<li><a href="#myModal" data-toggle="modal"><span class="glyphicon glyphicon-cog"></span> Config</a></li>-->
            <li><a href="logoutUsuario"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </div>
      </nav>

        <div class="container">
        
          <form class="form-inline" method="get" action="pesquisaCadastro"> 
              <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" id="pesquisa" name="pesquisa" placeholder="Pesquisar" size="200">
                            <span class="input-group-btn">
                                <button class="btn btn-info" type="submit">&nbsp<i class="glyphicon glyphicon glyphicon-search"></i>&nbsp</button>
                            </span>
                    </div> 
                    
              </div>
          </form>
      </div>
      </br>
      </br>
        
	  <div class="container">  
     
      <!-- Objeto DAO Listar JAVA -->
        
        <!-- Fim Objeto JAVA -->  

                    <table id="example" class="table table-striped table-hover dt-responsive" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th >Exibição</th>
                            <th >Email Empresárial</th>
                            <th >Email Pessoal</th>
                            <th >Nome</th>
                            <th >Senha</th>
                            <th >Celular</th>
                            <th >Telefone</th>
                            <th ></th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <!-- Loop JAVA -->
                    <%

                    DadosDao dao = new DadosDao();
                    List<Dados> list = dao.Listar(request.getParameter("pesquisa"));
                    
                    for(int i = 0; i < list.size(); i++){
                    	
                    	Dados dados = list.get(i);
                    
                    %>
                    
                     <tr>
                     <td ><%=dados.getNome() %></td>
                     <td><%=dados.getEmail_pessoal() %></td>
                     <td ><%=dados.getEmail_particular() %></td>
                     <td ><%=dados.getUsuario() %></td> 
                     <td ><%=dados.getSenha() %></td>
                     <td ><%=dados.getCelular() %></td>
                     <td ><%=dados.getTelefone() %></td>
                   	 <td >
                         <a class="btn" href="painelAssinatura.jsp?id=<%=dados.getId() %>" data-toggle="modal" data-target="#largeModal"><i class="glyphicon glyphicon glyphicon-list-alt"></i></a>
                         <a class="btn" href="editar.jsp?id=<%=dados.getId() %>"><i class="glyphicon glyphicon glyphicon-pencil"></i></a>
                         <a class="btn" href="deletarCadastro?id=<%=dados.getId() %>" onclick="return confirm('Tem certeza que deseja Excluir?');"><i class="glyphicon glyphicon glyphicon-trash"></i></a> 
                    </td>
                    </tr>
                    <% } %>
            <!-- Fim Loop JAVA -->
            </tbody>
        </table>
           
          <!--Modal-->  
          <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">  
          <div class="modal-dialog modal-lg">  
          <div class="modal-content">
          </div>
          </div>
          </div>
           <!--Fim da Modal-->

        </div>
        
    </body>
</html>