#!/usr/bin/perl
# statements.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    #my $var = 42;
    #my $var = "forty-two";
    #message("var is $var.");
    my @var = ("forty-two", 42, 40 + 2);
    message(join(':', @var));
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
