#!/usr/bin/perl
# variables.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my %hash = ("one" => "spider",
                "two" => "ant",
                "three" => "bee");
    message($hash{"three"});
    #seeing keys
    message(join(':',sort(keys(%hash))));
    message(join(':',sort(values(%hash))));

    foreach my $k (sort keys %hash) {
      my $v = $hash{$k};
      message("$k is $v");
    }
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
