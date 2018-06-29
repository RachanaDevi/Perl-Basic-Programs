use strict;
use warnings;
use diagnostics;
#HERE SUBROUTINES
#subroutines are functions which allow you to call a block of code to execute
use feature "say";
use feature 'state';
sub get_random
{
	return int(rand(11));
}
say get_random();


#arguments in subroutine
sub get_random_max
{
	my($max_num)=@_;   
	
	$max_num ||=11; #it maybe like suppose if user does not give an argument? This is default value 
	return int(rand($max_num));
}
say get_random_max(100);

#2 arguments 
sub get_sum
{
	my($no1,$no2)=@_;
	$no1||=1;
	$no2||=2;
	return $no1+$no2;
	
}
say get_sum();

#Many Arguments
sub sum_many
{
	my $sum=0;
	foreach (@_)
	{
		$sum+=$_;
	}
	return $sum;
}

say sum_many(1,2,3,4,5,6,7,8,9,10);


#state is like static 
sub increment
{
	state $execute_total = 0;
	$execute_total++;
	say "Executed times $execute_total";
}
increment();
increment();

#Returning an array
sub double_array
{
   my @num_array=@_; #accepts arguments
  $_ *=2 for @num_array; #multiply 2 for numbers in array
  
  return @num_array;
}
my @rand_array=(1,2,3,4,5);
print join(", ",double_array(@rand_array)),"\n";


#Passing 1 argument and returning 2 values
sub get_mults
{
	my ($ran_num)=@_;
	$ran_num||=1;
	return $ran_num*2,$ran_num*3;
}
my ($ans1,$ans2)=get_mults(3);
say "ANS1=$ans1\n ANS2=$ans2";

#RECURSIVE SUBROUTINES
sub factorial
{
	my($fact)=@_;
	return 1 if $fact<=1;
	return $fact*factorial($fact-1);
	
}

say "Factorial of 5 is ",factorial(5);