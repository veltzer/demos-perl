#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

$a = 1;
$b = 2;

swap($a, $b);

print "$a $b\n";

sub swap
{
	@_[0, 1] = @_[1, 0];
}
