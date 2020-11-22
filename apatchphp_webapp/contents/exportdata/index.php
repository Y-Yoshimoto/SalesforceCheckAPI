<?php
    $redis = new Redis();
    $redis->connect('radisds', 6379);
    $allKeys = $redis->keys('*');
    $allValues = array();
    foreach ($allKeys as $key) {
        $value = $redis->get($key);
        $allValues += array("$key" => "$value");
    }
    $json = json_encode($allValues);
    print_r( $json );
    exit;
?>