use warnings;
use strict;
use diagnostics;
use feature "say";

#denoted by % 
#first is key
my %employees=(
"A"=>1,
"B"=>2,
"C"=>3);




$employees{D}=4;


while(my ($key,$value)=each %employees)
{
	say $key,"->",$value;
}
#Slicing and throwing it in array  IMPORTANT
my @ages=@employees{"A","B"};
say @ages;


my @has_array=%employees;
say join",",@has_array;


delete $employees{"D"};
while(my ($key,$value)=each %employees)
{
	say $key,"->",$value;
}


say exists $employees{"A"}?"Yes yes ":"No no";


for my $key(keys %employees)
{
	say $key;
}

