<?php
    # Redis接続情報
    $redis = new Redis();
    $redis->connect('radisds', 6379);

    # Redisの全データ取得(全てのキーを取得し、値の取り出し(Int変換))
    $allValues = array();
    foreach ($redis->keys('*') as $key) {
        array_push($allValues, array('time'=>$key, 'val'=>intval($redis->get($key))));
    }

    # 取得データの返却
    print_r(json_encode($allValues));
    exit;
?>