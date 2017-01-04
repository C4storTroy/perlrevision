#!/usr/bin/perl
# subs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  my $num = addnum(2,4);
  message("This is the template.pl exercise file from Perl 5 Essential Training.");
  message("num is $num");
  message(addnum(5,8));
}

sub addnum
{
  my ($v1, $v2) = @_;
  return $v1 + $v2;
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
