#!/usr/bin/perl
# template.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    #message("This is the template.pl exercise file from Perl 5 Essential Training.");
    my $n = shift;
    my $r = factorial($n);
    message("factorial of $n is $r");
}

#factorial(n)
#returns the product of all integers up to including n
#computed recursevely
#
sub factorial
{
    my $n = shift or return 0;
    if ($n>1){
        return $n * factorial($n-1);
    } else {
        return 1;
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

