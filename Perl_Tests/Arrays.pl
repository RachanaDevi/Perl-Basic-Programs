use strict;
use warnings;
use diagnostics;
use feature 'say';
#Arrays declared by @
my @abcs=('a'..'z');

print join"...",@abcs,"\n";

my $my_letter='c';
say ++$my_letter;


my @info=("Rachana",19,"123 Street");
$info[3]="Devi";
print join",",@info,"\n";

my $myInfo;
#Different types of for loops for arrays
say "First for loop";
for $myInfo (@info)
{
	say $myInfo;
}
say "Second for loop";
foreach $myInfo (@info)
{
	say $myInfo;
}
say "Third for loop";
for(@info)
{
	say $_;
}

my ($f_name,$age,$addr,$l_name)=@info;
say "first Name=",$f_name;

#Pop->get last value from array         #Shift->get first value of array
#Push->insert value at end of array      #Unshift->insert value at start of array
say "popped Value=",pop @info;
say join",",@info;

say "Pushed value,so length=",push @info,"Devi2";  #so now length 4
say join",",@info;

say "Shift,so first value=",shift @info;
say join",",@info;

say "Unshift so inserted at start=",unshift @info,"Rachana2";
say join",",@info;

#To remove index 0 to 2;
splice @info,1,1;
say "AFTER SPLICING",join",",@info;


#Using Split to turn String into an array
my $customer="Sally Rue Sue";
my @custom=split/ /,$customer;
say join",",@custom;


#Reverse,sort and reverse sort an array
say reverse @info;
say sort @info;
say reverse sort @info;

my @primes=(2,3,5,7,11,13);
#using grep 
my @odd_arr=grep{$_%2}@primes;
say "ODD=",join",",@odd_arr;

#Performing on all
my @new_arr=map{$_*2}@primes;
say join",",@new_arr;

#Slice data from an Array

 @info=@primes[0,4]; #only getting 0 and 2
 say join",",@info,"\n";
 
 #Length of an array
 say scalar @info;  #no of elements in array
 
 
 
 

