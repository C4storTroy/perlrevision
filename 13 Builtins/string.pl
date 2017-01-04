#!/usr/bin/perl
# builtins.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  my $string = "this is a string\n";
  chomp $string;
  message("[$string]");

  my $s2 = uc $string;
  message($s2);

  my $s3 = substr($string, 5, 6);
  message($s3);

  my $s4 = rindex ($string, 's'); #index or rindex
  message($s4);

  my $s5 = substr($string, rindex ($string, 's'));
  message($s5);
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
