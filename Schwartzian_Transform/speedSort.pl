use strict;

my @input = <>;
my @length = ();

# for (@input) {
#     my @lengthIndex = ();
#     $lengthIndex[0] = $_;
#     $lengthIndex[1] = length $_;
#     push @length, \@lengthIndex;
# }

## @lengthIndexという中間配列の無駄を無くしたい

for (@input) {
    push @length, [ $_,length $_ ];
}

my @length2 =  sort {$b->[1] <=> $a->[1]} @length;

for (@length2) {
    print $_->[0];
}
