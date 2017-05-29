# @Jan = ('January', 31);
# @Feb = ('February', 28);
# @Mar = ('March', 31);
# @Apr = ('April', 30);
# @May = ('May', 31);
# @Jun = ('June', 30);
# @Jul = ('July', 31);
# @Aug = ('August', 31);
# @Sep = ('September', 30);
# @Oct = ('October', 31);
# @Nov = ('November',30);
# @Dec = ('December', 31);

# @Month = (\@Jan, \@Fub, \@Mar, \@Apr, \@May, \@Jun, \@Jul, \@Aug, \@Sep, \@Oct, \@Nov, \@Dec);

@Month = (
    ['January', 31],    ['February', 28],       ['March', 31],
    ['April', 30],      ['May', 31],            ['June', 30],
    ['July', 31],       ['August', 31],         ['September', 30],
    ['October', 31],    ['November',30],        ['December', 31],
);

# 3つの書き方がある
$tuki = ${$Month[3]}[0];
$hi1 = $Month[2]->[1];
$hi2 = $Month[3][1];
print "$tuki has $hi1 days....Oops, it has $hi2 days. \n";

# 配列全体を返すには以下のように書くしかない（シンタックスシュガーは使えない）
print "@{$Month[3]}";