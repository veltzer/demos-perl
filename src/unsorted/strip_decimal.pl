#!/usr/bin/perl -w

my($str);
chomp($str = <STDIN>);

while (chop($str) ne "." && $str ne "") {}

print $str, "\n";
