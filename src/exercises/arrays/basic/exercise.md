- input a list of numeric values.
	print the mean, median, variance of the values.
	all input is from STDIN.
	each number is floating point on it's own line.

	read all input into an array:
	my @lines=<STDIN>;

	or one by one:
	my $line;
	while($line=<STDIN>) {
		# do something with $line
	}

# to iterate an array use:

```perl
foreach my $word (@words) {
	# do something with $word
}
```
