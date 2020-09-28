#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------
# File name: motif_match_memory.pl
#
# Match operator m/()/ with memory searches for  PATTERN in STRING; 
# the statement STRING =~ m/(PATTERN)/ becomes TRUE if PATTERN is 
# found; moreover, the found pattern is saved in a special variable 
# $1. PATTERN is specified using regular expressions.
# This program reports if a motif (substring with a specific pattern)
# is present in a DNA sequence.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/functions/m.html
# http://www.ncbi.nlm.nih.gov/nuccore/224004157?report=fasta
# ------------------------------------------------------------------

my $DNA_sequence = "AATGAAGGGCCGCTACGATAAGGAACTTCGTAATTTCAG";
my $motif = "ATG.*?TAA";

$DNA_sequence =~ m/($motif)/;

if(defined $1) {
  print "Found the motif $1 \n";
}
else {
  print "Could not find the motif \n";
}
