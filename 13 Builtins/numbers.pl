#!/usr/bin/perl
# builtins.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
# man perlfunc
use strict;
use warnings;

main(@ARGV);

sub main
{
  my $number = 123.456;
  my $n2 = int($number);
  my $otherNumber = "a5";
  my $n3 = hex($otherNumber); #oct rand()
  my $n4 = rand(100);
  message($n2);
  message($n3);
  message("randon number is $n4");
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print("$0: $e\n");
    exit 0;
}
