#!/usr/bin/perl
# template.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  my $time = "05:27:32";
  my ($hour, $min, $sec) = split(/:/, $time);
  message("hour: $hour, min: $min, sec: $sec");
  error("this is an error message");
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    my @me = split(m|[\\/]|, $0);
    #print(STDERR "$0: $e\n");
    print(STDERR "$me[-1]: $e\n");
    exit 0;
}
