<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>MeLivro</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<?php echo BASEURL; ?>/css/bootstrap.min.css">
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }
		.navbar {
			margin-bottom: 20px;
		}
    </style>

</head>
<body>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="#">MeLivro</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="<?php echo BASEURL; ?>/index.php">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Usuarios</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
				<a class="dropdown-item" href="<?php echo BASEURL; ?>/usuarios/index.php">Listar</a>
				<a class="dropdown-item" href="<?php echo BASEURL; ?>/usuarios/add.php">Adicionar</a>
			</div>
          </li>
		  <li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Produtos
        </a>
            <ul class="dropdown-menu" aria-labelledby="dropdown02">
				<li><a class="dropdown-item" href="<?php echo BASEURL; ?>/produtos/listarprod.php">Lista Produto</a></li>
				<li><a class="dropdown-item" href="<?php echo BASEURL; ?>/produtos/find.php">Buscar Produto</a></li>
			</ul>
          </li>
           
          <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle" href="example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Vendas
            </a>
                <ul class="dropdown-menu" aria-labelledby="dropdown02">
           <li><a class="dropdown-item" href="<?php echo BASEURL; ?>/vendas/indexVendas.php">Listar Vendas</a></li>
           <li><a class="dropdown-item" href="<?php echo BASEURL; ?>/vendas/addVendas.php">Adicionar Venda</a></li>
         </ul>
              </li>
		
		<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pagamento
        </a>
            <ul class="dropdown-menu" aria-labelledby="dropdown03">
              <li><a class="dropdown-item" href="<?php echo BASEURL; ?>/pagamento/add.php">Adicionar</a></li>
              <li><a class="dropdown-item" href="<?php echo BASEURL; ?>/pagamento/index.php">Listar</a></li>
        </ul>
      </li>
      <li class="nav-item dropdown">
 <a class="nav-link dropdown-toggle" href="example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     Pedidos
   </a>
       <ul class="dropdown-menu" aria-labelledby="dropdown04">
         <li><a class="dropdown-item" href="<?php echo BASEURL; ?>/pedidos/add.php">Adicionar</a></li>
         <li><a class="dropdown-item" href="<?php echo BASEURL; ?>/pedidos/index.php">Listar</a></li>
   </ul>
        </ul>

          </li>
  

         </li>

        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>

    <main class="container">
