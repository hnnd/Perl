#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: if_elsif.pl
#
# Code below determines if the last codon in a DNA segment
# is the start codon ATG or one of the stop codons TAA, TAG, or TGA;
# or none of the above.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perlsyn.html#Compound-Statements
# https://en.wikipedia.org/wiki/DNA_codon_table
# ------------------------------------------------------------------ 

my $DNA_segment = "ATGACATGACCAATC";
my $codon = substr($DNA_segment, -3, 3);

if( ($codon eq "ATG") ){
  print "Codon $codon is a start codon \n";
}
elsif( ($codon eq "TAA") or ($codon eq "TAG") or
       ($codon eq "TGA") ){
  print "Codon $codon is a stop codon \n";
}
else{
  print "Codon $codon is neither a start nor a stop codon \n";
}

print "Done! \n";
