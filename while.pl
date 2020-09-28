#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: while.pl
#
# while (EXPR){
# 
# }
# while loop iterates the block as long as EXPR remains TRUE.
# Code below first computes the reverse strand of a DNA segment using
# Perl's reverse() function. Then, using a while loop develops an 
# algorithm to reverse a string.  
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/functions/while.html
# http://www.ncbi.nlm.nih.gov/nuccore/226377833?report=fasta
# http://www.as.miami.edu/prismrsvp/
# ------------------------------------------------------------------ 

my $zika_DNA = "CATGTGTGACGCCACCATGA";
print "Original\t $zika_DNA \n";

my $reversed_zika_DNA;
$reversed_zika_DNA = reverse($zika_DNA);
print "Reversed\t $reversed_zika_DNA \n";

my $length_zika = length($zika_DNA);
my $index = $length_zika - 1;
my $reversed;

while( $index >= 0 ){
  $reversed = $reversed.substr($zika_DNA, $index, 1);
  $index = $index - 1;
}

print "Ours\t\t $reversed \n";
