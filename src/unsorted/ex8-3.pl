#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my(@cntrs) = (0,0,0,0,0,0,0,0,0,0);
while (<>) {
	$cntrs[$_]++ foreach (/\d/g);
}
