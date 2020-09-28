#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: scope.pl
#
# With use strict; the scope of a variable is from the point of
# declaretion to end of the block it is declared in.
# Code below illustrates concept of scope of variables with a naked
# block { } and a for loop.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/strict.html
# ------------------------------------------------------------------ 

my $RNA = "AGU"; 
my $length_RNA;

$length_RNA = length($RNA); 
print "Before block: length = $length_RNA \n";

{
  my $RNA = "UGGAUG"; 
  $length_RNA = length($RNA);
  print "Inside block: length = $length_RNA \n";
}

$length_RNA = length($RNA); 
print "After block: length = $length_RNA \n";

print "\n";

my $i = 200; 
print "Before for loop: i = $i\n";

for(my $i = 0; $i < 6; $i++){ 
  print "Inside for loop: i = $i\n";
}

print "After for loop: i = $i\n";
