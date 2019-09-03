<%@page import="br.com.gerson.modelo.Dados"%>
<%@page import="br.com.gerson.dao.DadosDao"%>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	DadosDao dao = new DadosDao();
	Dados dados = dao.selecionar(id);
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Css -->
<link rel="stylesheet" href="css/assinatura2/style01.css">
<link rel="stylesheet" href="css/assinatura2/style02.css">

<!-- Js -->
<script src="js/copy/copy.js"></script>

<title>Painel | Assinatura</title>


</head>
<body>
	<!--Modal-->
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">&times;</button>
		<h4 class="modal-title" id="myModalLabel">Dados da Assinatura</h4>
	</div>
	<div class="modal-body">

		<b>-Resposta do Chamado<br></br></b>

		<table id="resposta">
			<tr>
				<td colspan="4">Segue acesso ao E-mail corporativo da
					HBBrokers.</td>
			</tr>
			<tr>
				<td colspan="4"></br></td>
			</tr>
			<tr>
				<td colspan="4"><b>Nome completo.:</b> <a id="nome"
					onclick="copyElement('nome');"><%=dados.getUsuario()%></a></td>
			</tr>
			<tr>
				<td colspan="4"><b>Nome de exibição.:</b> <a id="exibicao"
					onclick="copyElement('exibicao');"><%=dados.getNome()%></a></td>
			</tr>
			<tr>
				<td colspan="4"><b>E-mail empresárial.:</b> <a id="email"
					onclick="copyElement('email');"><%=dados.getEmail_particular()%></a></td>
			</tr>
			<tr>
				<td colspan="4"><b>Senha.:</b> <a id="senha"
					onclick="copyElement('senha');"><%=dados.getSenha()%></a></td>
			</tr>
			<tr>
				<td colspan="4"></br></td>
			</tr>
			<tr>
				<td colspan="3">Att,</td>
			</tr>
			<tr>
				<td colspan="4"></br></td>
			</tr>
		</table>
		<div id="" class="modal-footer"></div>

		<div id="image" class="">

			<div class="box1">

				<table class=MsoNormalTable border=0 cellspacing=3 cellpadding=0
					align=left width=858
					style='width: 643.5pt; mso-cellspacing: 2.2pt; mso-yfti-tbllook: 1184; mso-table-lspace: 7.05pt; margin-left: 4.8pt; mso-table-rspace: 7.05pt; margin-right: 4.8pt; mso-table-anchor-vertical: margin; mso-table-anchor-horizontal: margin; mso-table-left: left; mso-table-top: -69.75pt; mso-padding-alt: 0cm 0cm 0cm 0cm'>
					<tr
						style='mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes; height: 78.0pt'>
						<td width=168
							style='width: 126.2pt; padding: .75pt .75pt .75pt .75pt; height: 78.0pt'>

							<p class=MsoNormal
								style='line-height: 105%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>
								<a
									href="http://www.soahelbortem.com.br/arquivos/Logo-hb-brokers.jpg">

									<span
									style='color: windowtext; mso-no-proof: yes; text-decoration: none; text-underline: none'>
										<span style='mso-ignore: vglayout'><img border=0
											width=155 height=78
											src="img/assinatura-corretores_arquivos/image001.jpg"
											alt="cid:image005.jpg@01D33C3B.B1BA9B10"
											v:shapes="Imagem_x0020_2"></span>
								</span>

								</a> <span
									style='font-size: 12.0pt; line-height: 105%; font-family: "Arial", sans-serif; color: #1F497D'></span>
							</p>

						</td>

						<td width=3
							style='width: 2.5pt; background: #153A6E; padding: .75pt .75pt .75pt .75pt; height: 78.0pt'></td>
						<td width=7
							style='width: 5.35pt; padding: .75pt .75pt .75pt .75pt; height: 78.0pt'></td>
						<td width=665
							style='width: 498.45pt; padding: .75pt .75pt .75pt .75pt; height: 78.0pt'>

							<p class=MsoNormal
								style='line-height: 115%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>

								<!-- Apelido -->
								<b> <span
									style='font-size: 11.0pt; line-height: 115%; font-family: "Arial", sans-serif; color: #153A6E'><%=dados.getNome()%></span>
								</b> <span style='font-size: 10.5pt; line-height: 115%'></span>
							</p>

							<p class=MsoNormal
								style='line-height: 115%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>

								<!-- Departamento -->
								<b> <span
									style='font-size: 11.0pt; line-height: 115%; font-family: "Arial", sans-serif; color: #153A6E'><%=dados.getDepartamento()%><o:p></o:p></span>
								</b>
							</p>

							<p class=MsoNormal
								style='line-height: 115%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>

								<!-- Email -->
								<a href="mailto:zuleika.consultora@gmail.com"> <span
									style='font-size: 11.0pt; line-height: 115%; font-family: "Calibri", sans-serif'><%=dados.getEmail_pessoal()%></span>
								</a> <span style='font-size: 8.0pt; line-height: 115%'><o:p></o:p></span>
							</p> <!-- Empresa -->
							<p class=MsoNormal
								style='line-height: 115%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>

								<span
									style='font-size: 7.5pt; line-height: 115%; font-family: "Arial", sans-serif; color: #153A6E'>HB
									Brokers Gestão Imobiliária LTDA</span> <span
									style='font-size: 7.5pt; line-height: 115%'><o:p></o:p></span>

							</p> <!-- Telefones -->
							<p class=MsoNormal
								style='line-height: 115%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>

								<span
									style='font-size: 7.5pt; line-height: 115%; font-family: "Arial", sans-serif; color: #153A6E'>Celular:
									<%=dados.getCelular()%></span><span
									style='font-size: 8.0pt; line-height: 115%'><o:p></o:p></span>

							</p> <!-- Endereço -->
							<p class=MsoNormal
								style='line-height: 115%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>

								<span
									style='font-size: 7.5pt; line-height: 115%; font-family: "Arial", sans-serif; color: #153A6E'>Av.
									Capitão Antônio Rosa, 409, Vila Madalena</span>

							</p>

							<p class=MsoNormal
								style='line-height: 115%; mso-element: frame; mso-element-frame-hspace: 7.05pt; mso-element-wrap: around; mso-element-anchor-horizontal: margin; mso-element-top: -69.75pt; mso-height-rule: exactly'>

								<span
									style='font-size: 7.5pt; line-height: 115%; font-family: "Arial", sans-serif; color: #153A6E'>Spaces
									Vila Madalena | São Paulo | SP | CEP 01443-010</span> <span
									style='font-size: 10.5pt; line-height: 115%; font-family: "Arial", sans-serif; color: #153A6E'></span>

							</p>

						</td>
					</tr>
				</table>

			</div>
		</div>

		<div class="modal-footer">
			<button class="btn btn-info" onclick="copyElement('resposta');">Resposta</button>
			<button type="button" class="btn btn-info"
				onclick="copyElement('image');">Assinatura</button>
		</div>
		<!--Fim da Modal-->

		<!--Modal-->
		<div class="modal fade" id="largeModal" tabindex="-1" role="dialog"
			aria-labelledby="largeModal" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content"></div>
			</div>
		</div>
		<!--Fim da Modal-->
</body>
</html>