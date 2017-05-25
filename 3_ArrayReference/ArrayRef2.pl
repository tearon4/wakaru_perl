@price = (100, 200, 300, 400);
@count = (5,10,20,30);

# print "今日の売上は…" , &sales(\@price, \@count), "/n";
print &sales(\@price,\@count), "\n";

sub sales {
    my ($ref_price, $ref_count) = @_;
    my $total = 0;
    for (my $i = 0; $i < 5; $i++) {
        $total += @$ref_count[$i] * @$ref_price[$i];
    }
    return $total;
}