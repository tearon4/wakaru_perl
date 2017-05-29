$codeRef = \&calc_daikei;
# $menseki = &$codeRef(3,4,5);
$menseki = $codeRef->(3,4,5);


print "求める台形の面積は… $menseki で,codeRefは… $codeRef です。\n";

sub calc_daikei {
    my($top, $bottom, $height) = @_;
    warn "上底： $top ,下底: $bottom , 高さ: $height \n";
    return ($top + $bottom) * $height / 2;

}
