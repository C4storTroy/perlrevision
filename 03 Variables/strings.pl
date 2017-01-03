#!/usr/bin/perl
# variables.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    #message("This is the exercise file for Variables and Values.");
    my $n = 42;
    #my $s1 = "this is a string: \"$n\"";
    #my $s2 = 'this is a string: "$n"';
    my $s1 = "this is a string" . ':' . "this another string";
    #my $s1 = qq{this is a string: "$n"};
    my $s2 = q{this is a string: '$n'};
    message($s1);
    message($s2);
    message($s1 . ' ' . $s2);
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
