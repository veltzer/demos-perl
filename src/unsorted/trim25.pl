#!/usr/bin/perl -w

# this script trims all words to 5 characters

use strict;
use diagnostics;

my($line);
while($line=<STDIN>) {
	chomp($line);
	my(@result)=map(substr($_,0,5),split(" ",$line));
	print "@result\n";
	# another option
	#print join(" ",map(substr($_,0,5),split(" ",$line)))."\n";
	# and yet another option
	#my(@result)=map(substr($_,0,5)." ",split(" ",$line));
	#print @result."\n";
}