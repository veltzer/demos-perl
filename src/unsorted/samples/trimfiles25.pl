#!/usr/bin/perl -w

# this script trims all lines in files given to it to 5 characters 

use strict;
use diagnostics;

=head comment

my($line);
while($line=<>) {
	chomp($line);
	print substr($line,0,5)."\n";
}

=cut

if(@ARGV>0) {
	my($file);
	foreach $file (@ARGV) {
		open(FILE,$file) || die("huh!?!");
		my($line);
		while($line=<FILE>) {
			chomp($line);
			print substr($line,0,5)."\n";
		}
		close(FILE) || die("duh!?!");
	}
} else {
	my($line);
	while($line=<STDIN>) {
		chomp($line);
		print substr($line,0,5)."\n";
	}
}
