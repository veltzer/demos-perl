#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

my $line;
while ($line = <STDIN>) {
	chomp $line;
	my @data = split(':', $line);
	$data[1] = '';
	print join(':', @data), "\n";
}
