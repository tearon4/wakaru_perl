sub uniq {
    my %tmp =  map {($_, 1)} @_;
    sort keys %tmp;
}

# 1;を書くのがルール（requireされるファイルは常に真を返すように設定）
1;