#!/usr/bin/perl
# files.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    open(FH, '<', 'workingfile.txt') or error("cannot open file ($!)");
    open(NFH, '>', 'newfile.txt') or error("cannot open file for write ($!)");
    #print while <FH>;
    print NFH while <FH>;
    #while(my $line = <FH>){print $line;}
    close NFH;
    close FH;

}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print(STDERR "$0: $e\n");
    exit 0;
}
