<?php
    header("Content-Type: application/json; charset=UTF-8");
    //POSTされた値の取得
    $json = file_get_contents('php://input');
    $contents = json_decode($json, true);
    $redis = new Redis();
    $redis->connect('radisds', 6379);
    #$redis->set($contents["key"], $contents["value"], 172800); # 2Day alive
    $redis->set($contents["key"], $contents["value"], 3600); # 60m alive
    exit;
?>