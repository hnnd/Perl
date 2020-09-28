#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: length.pl
#
# length() function takes a string as an argument and returns
# the number of characters in the string.
# Code below computes the number of nucleotides in a DNA segment.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://www.ncbi.nlm.nih.gov/nuccore/226377833?report=fasta
# http://perldoc.perl.org/functions/length.html
# http://perldoc.perl.org/index-functions-by-cat.html
# ------------------------------------------------------------------ 

my $zika_DNA = "AGTTGTTGATCTGTGTGAGT";
my $zika_DNA_length = length($zika_DNA);

print "The first $zika_DNA_length nucleotides ", 
      "of Zika virus is $zika_DNA \n";
