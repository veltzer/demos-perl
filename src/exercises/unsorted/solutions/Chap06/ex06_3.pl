# Exercise 6.3

# Add and average employee hours

# Read input
my(@input) = <STDIN>;
chomp(@input);

# Process the list
my(%hours, %periods);
my($line);
foreach $line (@input){
	my($empno, $hrs) = split(/ /, $line);
	$hours{$empno} += $hrs;
	$periods{$empno}++;
}

# Print report
my($empno);
foreach $empno (sort(keys(%hours))) {
	unless ($empno eq "") {
	print("$empno\t$periods{$empno}\t$hours{$empno}\t",
		$hours{$empno}/$periods{$empno}, "\n");
	}
}
