
# 2次元配列の2つの表現

# ArrayRef3.pl
@Month3 = (
    ['January', 31],    ['February', 28],       ['March', 31],
    ['April', 30],      ['May', 31],            ['June', 30],
    ['July', 31],       ['August', 31],         ['September', 30],
    ['October', 31],    ['November',30],        ['December', 31],
);

print $Month3[1][1],"\n";

$Month4 = [
     ['January', 31],    ['February', 28],       ['March', 31],
     ['April', 30],      ['May', 31],            ['June', 30],
     ['July', 31],       ['August', 31],         ['September', 30],
     ['October', 31],    ['November',30],        ['December', 31],    
];

print $Month4->[1][1],"\n";