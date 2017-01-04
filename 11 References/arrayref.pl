#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    # I can use square brackets and not use reference operator
    # like my $var = \@list;
    #my $var = [
    #        "This is the Perl 5 references chapter.",
    #        42,
    #        "another string",
    #        "one more value"
    #        ];
    my @list = (
            "This is the Perl 5 references chapter.",
            42,
            "another string",
            "one more value"
            );
    my $var = \@list;
    my $copy = $var;
    message(join(':', @$copy));
    $copy->[2] = 187;
    message(join(':', @$copy));

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
