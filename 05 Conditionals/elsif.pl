#!/usr/bin/perl
# conditionals.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;


main(@ARGV);

sub main
{
    if(0){
      message("thisistrue");
    } elsif (0) {
      message("but this one is true");
    } elsif (1) {
      message("but this two is true");
    } else {
      message("false");
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
