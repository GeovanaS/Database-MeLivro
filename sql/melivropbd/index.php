<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>MeLivro</title>
</head>

<?php

include('config.php');
require_once(DBAPI);
     $msg = false;

     if(isset($_FILES['arquivo'])){
        $extensao = strtolower(substr($_FILES['arquivo']['name'],-4));
        $novo_nome = md5(time()) . $extensao;
        $diretorio = "upload/";

        move_uploaded_file($_FILES['arquivo']['tmp_name'], $diretorio.$novo_nome);
        $database = open_database();
        $sql_code = "INSERT INTO ARQUIVO(COD_IMAGEM,ARQUIVO,DATA) VALUES(null,'$novo_nome',NOW())";
        try{
            $database->query($sql_code);
            $_SESSION['message'] = "Arquivo enviado com sucesso!";
            $_SESSION['type'] = 'success';
        }catch (Exception $e) {
            $_SESSION['message'] = "Falha ao enviar arquivo";
            $_SESSION['type'] = 'danger';
     }
  close_database($database);

 }
?>
<h1> Upload de Imagem </h1>
<?php if($msg != false) echo "<p> $msg </p>"?>
<form action="index.php" method="POST" enctype="multipart/form-data">
        Imagem: <input type="file" required name="arquivo">
        <button type="submit"  value="Salvar">Salvar </button>
</form>

<?php
require_once(DBAPI);


$database = open_database();
$sql = ("SELECT * FROM ARQUIVO ORDER BY DATA");;
$result=mysqli_query($database,$sql);
 
while($row=mysqli_fetch_array($result)) { 
    echo "<div id = 'img div'>";
    echo "<br></br>";
    echo "Codigo da Imagem: ".$row['COD_IMAGEM']. " ";
    echo "<br></br>";
    echo "<img src = 'upload/".$row['ARQUIVO']."' >";
    echo "<br> </br>";
    echo "</div>";
} 
  close_database($database);
?>

<form method="post" action="index.php" enctype="multipart/form-data">
        <input type="hidden" name="size" value = "1000000">
</form>