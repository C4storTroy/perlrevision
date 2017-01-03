#!/usr/bin/perl
# operators.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  my $x = 5 != 5;
  print("x is '$x' \n");

  my $s = $ARGV[1] || "default";
  message($s);
  if((5 == 6) || (6 == 6)){ #&& / and || / or
    message("this is true");
  } else {
    message("this is NOT true");
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
