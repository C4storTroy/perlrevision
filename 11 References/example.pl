#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my $var = "This is the Perl 5 references chapter.";
    my $ref = \$var; #creating a reference with \
    my $copy = $ref;
    message($var);
    message($ref);
    message($$ref);
    message($$copy);
    $var = 42;
    message($$copy);
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
