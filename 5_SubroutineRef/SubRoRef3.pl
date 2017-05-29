$calc_daikei = sub  {
    my($top, $bottom, $height) = @_;
    warn "上底： $top ,下底: $bottom , 高さ: $height \n";
    return ($top + $bottom) * $height / 2;
};

$menseki = $calc_daikei->(3,4,5);
print "求める台形の面積は… $menseki で,codeRefは… $calc_daikei です。\n";
