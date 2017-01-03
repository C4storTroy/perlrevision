#!/usr/bin/perl
# operators.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  if(5 < 5){
    message("this is true");
  } else {
    message("this is NOT true");
  }

  if("five" eq "five"){ #eq ne gt lt
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
