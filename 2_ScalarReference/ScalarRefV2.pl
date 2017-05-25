$age = 23;
# $ageのリファレンスを$refAgeへ
$refAge = \$age;
# $refAgeのをデリファレンスしたものを$derefへ
$deref = $$refAge;

print "age is $age, reference of 'age' is $refAge', dereference of 'refAge' is '$$refAge'.";