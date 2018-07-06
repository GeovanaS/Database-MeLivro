<?php

/** O nome do banco de dados*/
define('DB_NAME', 'id6405184_melivro');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'id6405184_root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', 'melivro');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** caminho absoluto para a pasta do sistema **/
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** caminho no server para o sistema **/
if ( !defined('BASEURL') )
	define('BASEURL', '/melivro');
	
/** caminho do arquivo de banco de dados **/
if ( !defined('DBAPI') )
	define('DBAPI', ABSPATH . 'inc/database.php');


/** caminho para pasta das imagens **/
if ( !defined('PASTA_IMAGEM') )
	define('PASTA_IMAGEM', ABSPATH . '/upload');

/** caminhos dos templates de header e footer **/
define('HEADER_TEMPLATE', ABSPATH . 'inc/header.php');
define('FOOTER_TEMPLATE', ABSPATH . 'inc/footer.php');
