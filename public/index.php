<?php

require_once "../config.php";

require_once "../model/newsModel.php";


    try{
    $db = new PDO(DB_DRIVER.":host=".DB_HOST.";dbname=".DB_NAME.";port=".DB_PORT.";charset=".DB_CHARSET,DB_LOGIN,DB_PWD);

    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);

        }catch(Exception $e){
    die($e ->getMessage());
    }

include "../view/homepage.php";

$db = null;