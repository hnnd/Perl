#!/usr/bin/perl -w
use strict;

# -------------------------------------------------------------------
# File Name: arrays.pl
#
# Arrays are lists of scalars. Array names begin with @. Arrays are 
# defined by listing their contents in parentheses, separated by 
# commas. The contents of an array are indexed beginning with 0 (not 1).
# Negative index looks from the end of array.
# To retrieve the elements of an array, replace the @ sign with a $ 
# sign, and follow that with the index position of the element you want.
# (It begins with a dollar sign because array entries are scalars.)
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perldata.html
# https://en.wikipedia.org/wiki/DNA_codon_table
# ------------------------------------------------------------------

my @stop_codons = ("TAA", "tAG");
print "Stop codons are @stop_codons \n";

my $first_stop_codon = $stop_codons[0];
print "First stop codon is $first_stop_codon \n";

$stop_codons[1] = "TAG";
print "Second stop codon is $stop_codons[1] \n";

$stop_codons[2] = "TGA";
print "Stop codons are @stop_codons \n";

my $length_of_array = scalar @stop_codons;
print "The length of the stop codons array is $length_of_array \n";
