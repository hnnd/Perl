#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: foreach.pl
#
# The foreach loop steps through an array, performing one iteration
# for each value in the array.
# Code below prints out all codons starting with T. 
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# https://en.wikipedia.org/wiki/DNA_codon_table
# http://perldoc.perl.org/functions/foreach.html
# ------------------------------------------------------------------ 

my @bases = ("T", "C", "A", "G");

foreach my $base (@bases){
  print "$base ";
}

print "\n";

print "Codons starting with T: \n";
foreach my $second_base (@bases){
  print "Codons starting with T$second_base:\n";
  foreach my $third_base (@bases){
    print "T$second_base$third_base\n";
  }
}

print "\n";
