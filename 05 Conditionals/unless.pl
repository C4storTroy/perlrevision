#!/usr/bin/perl
# conditionals.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my $x = 24;
    message("number is out of range") unless $x >25 and $x <100;
    #unless( $x >25 and $x <100) {
    #  message("number is out of range");
    #}
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
