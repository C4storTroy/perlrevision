#!/usr/bin/perl
# builtins.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
  my @list = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
  my $string = pop @list; #or shift or unshift
  push(@list, 'Foo');
  message($string);
  message(join(':', @list));
  $string = shift @list;
  message(join(':', @list));
  unshift(@list, $string);
  message(join(':', @list));
  my @rlist = reverse @list;
  message(join(':', @rlist));
  my @slist = sort @list;
  message(join(':', @slist));
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
