<?php
 
function getNews(PDO $db): array
{  
    $sql = "SELECT * FROM `betterconnectiong1` ORDER BY `datemessage` ASC ";
    $query = $db->query($sql);
    $result = $query->fetchAll(PDO::FETCH_ASSOC);
    $query->closeCursor();
    return $result;
}




    try{
        $db->exec($sql);
        return true;
    }catch(Exception $e){
        return $e->getMessage();
    }
