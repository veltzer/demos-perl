#!/usr/bin/perl -w

=head

This is an egrep(1) implementation in perl using the <> (diamond) operator.

=cut

use strict;
use diagnostics;

my $pattern = shift @ARGV;
while(<ARGV>) {
	print if (/$pattern/);
}
