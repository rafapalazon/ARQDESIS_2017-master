<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cadastro Empresa</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".data").datepicker(
						{
							dateFormat : 'dd/mm/yy',
							dayNames : [ 'Domingo', 'Segunda', 'Terça',
									'Quarta', 'Quinta', 'Sexta', 'Sábado',
									'Domingo' ],
							dayNamesMin : [ 'D', 'S', 'T', 'Q', 'Q', 'S', 'S',
									'D' ],
							dayNamesShort : [ 'Dom', 'Seg', 'Ter', 'Qua',
									'Qui', 'Sex', 'Sáb', 'Dom' ],
							monthNames : [ 'Janeiro', 'Fevereiro', 'Março',
									'Abril', 'Maio', 'Junho', 'Julho',
									'Agosto', 'Setembro', 'Outubro',
									'Novembro', 'Dezembro' ],
							monthNamesShort : [ 'Jan', 'Fev', 'Mar', 'Abr',
									'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out',
									'Nov', 'Dez' ],
							nextText : 'Próximo',
							prevText : 'Anterior'
						});
			});
</script>

</head>



<body>
	<c:import url="Menu.jsp" />
	<div id="main" class="container">
		<h3 class="page-header">Cadastrar Empresa</h3>
		<!-- Formulario para inclusao de clientes -->
		<form action="ManterEmpresa" method="post">

			<div class="row">
				<div class="form-group col-md-8">
					<label for="razaoSocial">Razão Social</label> <input type="text"
						class="form-control" name="razaoSocial" id="razaoSocial"
						maxlength="45" placeholder="Digite a Razão Social" required>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-8">
					<label for="nomeFantasia">Nome Fantasia</label> <input type="text"
						class="form-control" name="nomeFantasia" id="nomeFantasia"
						maxlength="45" placeholder="Digite o Nome Fantasia">
				</div>
			</div>



			<div class="row">
				<div class="form-group col-md-3">
					<label for="cnpj">CNPJ</label> <input type="text"
						class="form-control" name="cnpj" id="cnpj" required maxlength="14"
						pattern="\d{14}" placeholder="CNPJ, apenas números." required>
				</div>

				<div class="form-group col-md-3">
					<label for="temperatura">Temperatura</label> <select
						class="form-control" type="text" name="temperatura" id="temperatura" required>

						<option value="10">10°C</option>
						<option value="11">11°C</option>
						<option value="12">12°C</option>
						<option value="13">13°C</option>
						<option value="14">14°C</option>
						<option value="15">15°C</option>
						<option value="16">16°C</option>
						<option value="17">17°C</option>
						<option value="18">18°C</option>
						<option value="19">19°C</option>
						<option value="20">20°C</option>
						<option value="21">21°C</option>
						<option value="22">22°C</option>
						<option value="23">23°C</option>
						<option value="24">24°C</option>
						<option value="25">25°C</option>
						<option value="26">26°C</option>
						<option value="27">27°C</option>
						<option value="28">28°C</option>
						<option value="29">29°C</option>
						<option value="30">30°C</option>
						

					</select>
				</div>

			</div>
			<!-- horarioInicio, horarioFim, temperatura, horLigarAC, horDesligarAC -->
			<div class="row">
				<div class="form-group col-md-3">
					<label for="horarioInicio">Horário de Inicio</label> 
					<select class="form-control" type="text" name="horarioInicio" id="horarioInicio" required>
						<option value="00:00">00:00</option>
						<option value="01:00">01:00</option>
						<option value="02:00">02:00</option>
						<option value="03:00">03:00</option>
						<option value="04:00">04:00</option>
						<option value="05:00">05:00</option>
						<option value="06:00">06:00</option>
						<option value="07:00">07:00</option>
						<option value="08:00">08:00</option>
						<option value="09:00">09:00</option>
						<option value="10:00">10:00</option>
						<option value="11:00">11:00</option>
						<option value="12:00">12:00</option>
						<option value="13:00">13:00</option>
						<option value="14:00">14:00</option>
						<option value="15:00">15:00</option>
						<option value="16:00">16:00</option>
						<option value="17:00">17:00</option>
						<option value="18:00">18:00</option>
						<option value="19:00">19:00</option>
						<option value="20:00">20:00</option>
						<option value="21:00">21:00</option>
						<option value="22:00">22:00</option>
						<option value="23:00">23:00</option>
					</select>
				</div>

				<div class="form-group col-md-3">
					<label for="horarioFim">Horário de Saída</label> <select
						class="form-control" type="text" name="horarioFim" id="horarioFim" required>
						<option value="00:00">00:00</option>
						<option value="01:00">01:00</option>
						<option value="02:00">02:00</option>
						<option value="03:00">03:00</option>
						<option value="04:00">04:00</option>
						<option value="05:00">05:00</option>
						<option value="06:00">06:00</option>
						<option value="07:00">07:00</option>
						<option value="08:00">08:00</option>
						<option value="09:00">09:00</option>
						<option value="10:00">10:00</option>
						<option value="11:00">11:00</option>
						<option value="12:00">12:00</option>
						<option value="13:00">13:00</option>
						<option value="14:00">14:00</option>
						<option value="15:00">15:00</option>
						<option value="16:00">16:00</option>
						<option value="17:00">17:00</option>
						<option value="18:00">18:00</option>
						<option value="19:00">19:00</option>
						<option value="20:00">20:00</option>
						<option value="21:00">21:00</option>
						<option value="22:00">22:00</option>
						<option value="23:00">23:00</option>

					</select>
				</div>

				<div class="form-group col-md-3">
					<label for="horLigarAC">Ligar Ar</label> <select type="text"
						class="form-control" name="horLigarAC" id="horLigarAC" required>

						<option value="00:00">00:00</option>
						<option value="01:00">01:00</option>
						<option value="02:00">02:00</option>
						<option value="03:00">03:00</option>
						<option value="04:00">04:00</option>
						<option value="05:00">05:00</option>
						<option value="06:00">06:00</option>
						<option value="07:00">07:00</option>
						<option value="08:00">08:00</option>
						<option value="09:00">09:00</option>
						<option value="10:00">10:00</option>
						<option value="11:00">11:00</option>
						<option value="12:00">12:00</option>
						<option value="13:00">13:00</option>
						<option value="14:00">14:00</option>
						<option value="15:00">15:00</option>
						<option value="16:00">16:00</option>
						<option value="17:00">17:00</option>
						<option value="18:00">18:00</option>
						<option value="19:00">19:00</option>
						<option value="20:00">20:00</option>
						<option value="21:00">21:00</option>
						<option value="22:00">22:00</option>
						<option value="23:00">23:00</option>

					</select>
				</div>

				<div class="form-group col-md-3">
					<label for="horDesligarAC">Desligar Ar</label> <select type="text"
						class="form-control" name="horDesligarAC" id="horDesligarAC" required>

						<option value="00:00">00:00</option>
						<option value="01:00">01:00</option>
						<option value="02:00">02:00</option>
						<option value="03:00">03:00</option>
						<option value="04:00">04:00</option>
						<option value="05:00">05:00</option>
						<option value="06:00">06:00</option>
						<option value="07:00">07:00</option>
						<option value="08:00">08:00</option>
						<option value="09:00">09:00</option>
						<option value="10:00">10:00</option>
						<option value="11:00">11:00</option>
						<option value="12:00">12:00</option>
						<option value="13:00">13:00</option>
						<option value="14:00">14:00</option>
						<option value="15:00">15:00</option>
						<option value="16:00">16:00</option>
						<option value="17:00">17:00</option>
						<option value="18:00">18:00</option>
						<option value="19:00">19:00</option>
						<option value="20:00">20:00</option>
						<option value="21:00">21:00</option>
						<option value="22:00">22:00</option>
						<option value="23:00">23:00</option>

					</select>
				</div>

			</div>

			<hr />
			<div id="actions" class="row">
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary" name="action"
						value="insert">Salvar</button>
					<a href="index.jsp" class="btn btn-danger">Cancelar</a>
				</div>
			</div>
		</form>
	</div>
</body>

</html>
