# Exercise 4.3

=pod

=cut

use strict;
use warnings;

# Print a string in both upper and lower case

print("Enter a string: ");
my($str) = <STDIN>;

# Note: don't need to remove newline character

print("\L$str"); # Print lower case # Print out lower case
print("\U$str"); # Print upper case # Print out upper case
