#!/usr/bin/perl
# loops.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my @list = ("one", "two", "three", "four", "five");
    foreach my $s (@list){
      message($s);
    }
    message("===========");
    foreach (@list){
      message($_);
    }
    message("===========");
    message($_) foreach (@list); #postfix
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