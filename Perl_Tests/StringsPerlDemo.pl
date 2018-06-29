#Strings are also Scalar
use strict;
use warnings;
use diagnostics;
use feature 'say';

my $long_string="YO!";


#To find length of a string
my $len=length $long_string;
say $len;

#To find index of String
printf("am is AT %d",index $long_string ,"am");

#To find last index of String 
printf(" name is AT %d" ,rindex $long_string ,"name");

#Concatenation
$long_string= $long_string." and i like it";
say "\n", $long_string;


#Substring
say "String from index 7 to 10=",substr $long_string, 7,4;  #4 characters from there

#Last Character we use chop
say length $long_string;
printf("Last character  is= %s",chop $long_string);  #chop remove the last letter 

say "\n",length $long_string;

#To Remove Newlines use Chomp
$long_string="NEWLINES\nEVERYWHERE\nYEAHHH\n\n";

say $long_string;
say "Hello";
chomp $long_string;  #a new line at the end of YEAHHH removed
say $long_string;
say "Hello";  

#UPPERCASE LOWERCASE FIRSTUPPERCASE
$long_string="UpperCase and lowercase";
say uc $long_string;
say lc $long_string;
say ucfirst $long_string;

#Replacement of any delimeter with another delimeter
$long_string=~s/ /,/i;  
say $long_string;
#means replaces spaces with commas and g means global ie for all occurences,you can also put i for ignore case
#if you dont put anything then it considers only the first case

#Printing n times
$long_string=$long_string x2;
say $long_string;
