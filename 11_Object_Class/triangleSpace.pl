#! /bin/perl -w

use Triangle;

my $tri = Triangle->new(3,4,5);
my $space = $tri->space;
print "Triangle is $tri and its space is $space !\n";

my $tri2 = Triangle->new(1,1,200000);
my $space2 = $tri->space;
print "Triangle2 is $tri and its space is $space !\n";
