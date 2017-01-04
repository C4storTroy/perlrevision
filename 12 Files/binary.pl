#!/usr/bin/perl
# files.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;
use IO::File;

main(@ARGV);

sub main
{
  my $origfile = "olives.jpg";
  my $newfile = "copy.jpg";
  my $bufsize = 1024 * 1024;

  #oopen files
  my $origfh = IO::File->new($origfile, 'r') or
     error("cannot open $origfile ($!)");
  my $newfh = IO::File->new($newfile, 'w') or
     error("cannot open $origfile ($!)");

  #tell for windows system - no need for Linux but is good to have.
  $origfh->binmode(":raw");
  $newfh->binmode(":raw");

  my $buf = '';
  while( $origfh->read( $buf, $bufsize )){
    $newfh->print($buf);
  }
  message("Done.");

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
