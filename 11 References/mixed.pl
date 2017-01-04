#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  my $artists = [
     {
       name => "jimi Hendrix",
       instrument=> "Guitar",
       genre => "Rock"
     },
     {
       name => "Miles Daves",
       instrument=> "Trumpet",
       genre => "Jazz"
     },
     {
       name => "Ella Fitzgerald",
       instrument=> "Vocal",
       genre => "Jazz"
     },
  ];

  push @$artists, {name=> "Yoyo Maia", instrument=>"Cello", genre=>"Classical"};

  foreach my $artist (@$artists){
    message("$artist->{name}: $artist->{instrument}, $artist->{genre}");
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
