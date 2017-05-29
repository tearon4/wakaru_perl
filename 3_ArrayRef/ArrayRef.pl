# 配列変数名には@、パーレン()で囲むとリスト
@day = ('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');

$refDay = \@day;

print "refDay : $refDay -> @$refDay \n";

# 配列要素はあくまでスカラー
($getuyo, $kayo, $suiyo) = @day;

print "月曜日は$getuyo \n";
print "火曜日は$kayo \n";
print "水曜日は$suiyo \n";

print "金曜日の次は@day[5] \n";