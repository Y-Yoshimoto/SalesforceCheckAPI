<?php
    # Redis接続情報
    $redis = new Redis();
    $redis->connect('radisds', 6379);

    # API上限値設定
    $MAXAPIUSERD=intval('15000');

    $n=10;
    # Radis上の直近n個のデータ取得
    $valuesList = array();
    $recentlyKeys=($redis->keys('*'));
    rsort($recentlyKeys); # キーの並び替え

    foreach (array_slice($recentlyKeys, 0, $n) as $key) {
        array_push($valuesList,intval($redis->get($key)));
    }
    # 平均値生成
    $average = intval(array_sum($valuesList)/$n);

    # レスポンスデータ生成
    $used=array('name'=>'使用', 'value'=>$average);
    $free=array('name'=>'未使用', 'value'=>$MAXAPIUSERD-$average);
    $responseData = array($used,$free);

    # 取得データの返却
    print_r(json_encode($responseData));
    exit;
?>