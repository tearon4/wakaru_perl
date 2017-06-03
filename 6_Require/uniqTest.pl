@in = (4,5,1,4,8,1,9,2,5);
print "$_ " for &uniq(@in);

sub uniq {
#     my %tmp = ();
#     for (@_) {
#         $tmp{$_} = 1;
#     }

    my %tmp =  map {($_, 1)} @_;
    sort keys %tmp;
};

