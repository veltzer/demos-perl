# Exercise 11.2

=pod

=cut

use strict;
use warnings;

# Print a subtree listing

$ARGV[0] = "." unless (@ARGV > 0);

my($space) = "";
my($depth) = 0;

&listdir($ARGV[0]);

sub listdir {
	my($dir) = @_;
	my($handle) = "DIR$depth"; # Use unique handle
	my($file);

	opendir($handle, $dir) || die("Can't open $dir\n");
	chdir($dir); # Descend into subtree
	++$depth;
	while ($file = readdir($handle)) {
		if ($file ne "." && $file ne "..") {
			print("$space$file\n");
			if (-d $file) {
				$space .= " ";
				&listdir($file);
				chop($space);
				chop($space);
			}
		}
	}
	chdir(".."); # Move back up one level
	--$depth;
	closedir($handle) || die("Can't close $dir\n");
}
