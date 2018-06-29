use warnings;
use strict;
use diagnostics;
use feature "switch";
use feature 'say';
my $i=1;
my $age=18;
given($age)
{
   when($_ >16)
   {
      say "Drive";
      continue; #checks Next When Condition
   }
   
   when($_ >17)
   {
      say"Go Vote";
      continue;  #if no continue then wont go in default
   }
   
   default
   {
      say "IN DEFAULT";
   }
}