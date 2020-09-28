#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: if_else.pl
# 
# if(EXPR){
# 
# }
# else{
#  
# }
# If EXPR is TRUE the first block is executed, otherwise the second
# block following else is executed.
# Code below determines if the first codon in a DNA segment
# is the start codon "ATG" or not and reports the result.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perlsyn.html#Compound-Statements
# ------------------------------------------------------------------ 

my $DNA_segment = "ATGACATGA";
my $codon1 = substr($DNA_segment, 0, 3);

if( ($codon1 eq "ATG") ) {
  print "Codon $codon1 is a start codon. \n";
}
else {
  print "Codon $codon1 is not a start codon. \n";
}

print "Done!\n";
