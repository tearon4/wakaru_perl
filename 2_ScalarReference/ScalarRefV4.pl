# 「文字列をSCALAR refとして使うことはできません」
# というエラーを出してくれる
use strict 'refs';

$age = 23;
# $ageのリファレンスを$refAgeへ
$refAge = \$age;

$ref_test1 = $refAge;
$ref_test2 = "SCALAR(0x7ff1b5828368)";

$ref_test1What = ref $ref_test1; 
$ref_test2What = ref $ref_test2;

print "ref_test1: $ref_test1 -> $$ref_test1 : ref = $ref_test1What \n";
print "ref_test2: $ref_test2 -> $$ref_test2 : ref = $ref_test2What \n";
