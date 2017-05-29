
# my @length = map [$_, length $_],@input;
# my @length2 =  sort {$b->[1] <=> $a->[1]} @length;
# print map $_->[0], @length2;

## これでも良いが、mapはパイプ状にかける

print map $_->[0],
    sort {$b->[1] <=> $a->[1]}
    map [$_, length($_)], <>;