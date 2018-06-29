use warnings;
use strict;
use diagnostics;
use feature "say";
#Hashes use keys to access values
#denoted by % 
#first is key
my %employees=(
"A"=>1,
"B"=>2,
"C"=>3);

#printf("Sue is %d\n",$employees{Aue});

#Addressing new key
$employees{D}=4;

#To access it using  while loop
while(my ($key,$value)=each %employees)
{
	say $key,"->",$value;
}
#Slicing and throwing it in array  IMPORTANT
my @ages=@employees{"A","B"};
say @ages;

#Converting Hash into array
my @has_array=%employees;
say join",",@has_array;

#Deleting value from hashes
delete $employees{"D"};
while(my ($key,$value)=each %employees)
{
	say $key,"->",$value;
}

#To check if a value is there exists
say exists $employees{"A"}?"Yes yes ":"No no";

#Cycling through keys using for loop
for my $key(keys %employees)
{
	say $key;
}


