use strict;
use warnings;
use diagnostics;
#This is my first perl program
print "HI NAME\n";
use feature 'say'; #IMPORTANT
say "HELLOOOO";

 #Scalar declaration
 my $name="Derek";
 say $name;
 
($name,my $street)=("Rachana",'230 Street');
say $name," ",$street;

#FIRST WAY
my $info="$name lives on \"$street\"\n";
say $info;

#SECOND WAY
$info=qq{$name lives on "$street"\n};
say $info;

#LONG STRINGS ON MULTIPLE LINES JUST LIKE <PRE> IN HTML
my $long_string=<<"END";
These
are a bunch of
sentences
HURRAH!!
END

say $long_string;


#YOU CAN ALSO PRINT USING PRINTF JUST LIKE IN C/C++
printf("My name was %s and my street was %s\n",$name,$street);

#SWITCHING VALUES IN SCALARS
my $first=1;
my $second=2;

($first,$second)=($second,$first);
say "$first and $second";
say 5+4;


#DIFFERENT MATHEMATICAL EXPRESSIONS
say "EXPONENT 1=" ,exp 1;
say "HEX 10",hex 10;
say "RANDOM NO BETWEEN 0 and 10=",int rand(11);


#IF ELSE CONDITIONS
my $age=16;
if($age<18)
{
  print "NOT ELIGIBLE TO VOTE\n";
}

elsif($age<0)
{
  print "INVALID AGE";
}

else
{
  print "ELIGIBLE TO VOTE\n";
  
}

#COMPARISON OPERATORS FOR STRING
# eq,ne,lt,le,gt,ge
if('a' eq 'b')
{
  say "BOTH ARE EQUAL";
}
else
{
  say "THEY ARE NOT EQUAL";
}


# OPPOSITE OF IF IS UNLESS
unless(!('a' eq 'b'))
{
  say "BOTH ARE EQUAL";
}
else
{
  say "THEY ARE NOT EQUAL";
}

#TERNARY OPERATOR
say(($age<18)?"CAN'T VOTE":"CAN VOTE");


#FOR LOOP  
# THERE ARE MANY WAYS OF FOR LOOP EXACTLY 3
for(my $i=0;$i<10;$i++)
{
  say $i+1;
}

# OTHER TWO USED IN ARRAYS









#WHILE LOOP
my $i=1;
while($i<=10)
{
  say $i;
    $i++;
  if($i==4)
 { next;} # which is like continue in C/C++
 
  print "\nEXECUTES AT  $i\n";
  if($i==7)
  {
    last; #which is like break in C/C++
  }
}

#DO WHILE LOOP
my $lucky_num=7;
my $guess;

do
{
  say "Guess a number between 1 and 10";
  $guess=<STDIN>;  #HOW TO TAKE INPUT FROM USERS
}while $guess!=$lucky_num;

say "You Guessed 7!";

