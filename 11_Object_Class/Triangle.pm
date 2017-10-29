package Triangle;
use Carp qw(croak);

my $subSpace = sub {
    my ($x, $y, $z) = @_;
    my $s = ($x + $y + $z) / 2;
    my $inRoot = $s * ($s - $x) * ($s - $y) * ($s - $z);

    if($inRoot >= 0) {
        return sqrt($inRoot);
    }else {
        croak "sorry, you cannot construct the triangle ..."
    }
};

sub new {
    # $class <- インボカント
    my ($class, $a, $b, $c) = @_;
    # 3辺というプロパティを無名ハッシュ化
    # そのリファレンスを現在のパッケージにblessして返す
    bless { a => $a, b => $b, c => $c, s => $subSpace->($a, $b, $c) };
}

sub space {
    my $self = shift;
    warn "you're about to calculate the space of ", ref($self) , "!!!\n";
    return $self->{s};
}

1;