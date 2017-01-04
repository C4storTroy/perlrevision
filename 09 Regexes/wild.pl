#!/usr/bin/perl
# template.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    open(FH, 'short.txt');
    while(<FH>) {
      #/(^....)/; #4char begin of line
      #/(....)$/; #4char end of line
      #/(a...)/; #words initial a and 3 chars..
      #my @list = /(a...)/g; #g in the end to assure will get all ocurrences.
      #my @list = /(a.{9})/g; #same the above
      #my @list = /(a.*s)/g;
      my @list = /(a.*?s)/g;
      #print;
      #message($1) if $1;
      message(join(':', @list)) if @list;
    }
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
