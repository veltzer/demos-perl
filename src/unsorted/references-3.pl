#!/usr/bin/perl

use strict;
use warnings;

my(%people);
open($fh, "<", "/etc/passwd") || die "can't open passwd: $!\n";
while (<$fh>) {
	chomp;
	my($login, @data) = split ":";
	$people{$login} = \@data;
}
close $fh;

while (my($login, $datap) = each %people) {
	print "$login: @$datap\n";
}
