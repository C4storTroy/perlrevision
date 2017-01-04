#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  my %hash = (
    name => "jimi hendrix",
    instrument => "guitar",
    album => "are you experienced?"
  );
  my $ref = \%hash;
  message($ref);

  #anonnymous reference
  #usually with curly braces
  my $hashref = {
    name => "jimi hendrix",
    instrument => "guitar",
   album => "are you experienced?"
  };
  my $copy = $hashref;
  #message($hashref);
  $copy->{song} = "purple haze";
  foreach my $k (sort keys %$copy){
    my $v = $copy->{$k};
    message("$k: $v");
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
