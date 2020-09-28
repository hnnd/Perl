#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: substrings.pl
#
# substr(EXPR, OFFSET, LENGTH) function returns a substring from 
# the string in EXPR. The OFFSET argument is the index of the starting
# position of substring and LENGTH is its length. 
# Negative OFFSET starts extraction that far from the end of EXPR.
# Negative LENGTH omits that many characters from the end of EXPR.
# If LENGTH is absent, then the substring to the end of EXPR
# is returned. In all cases, string in EXPR remains intact. 
# Code below locates the first start codon ATG, than extracts the
# next two codons from a DNA segment. Also it extracts the last three
# nucleotides.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://www.ncbi.nlm.nih.gov/nuccore/NC_012532.1?report=fasta
# http://perldoc.perl.org/functions/substr.html
# ------------------------------------------------------------------ 

my $zika_DNA = "CATGTGTGACGCCACCATGA";
print "Zika DNA segment is $zika_DNA \n";

my $start_index = index($zika_DNA, "ATG");
print "Start codon index is $start_index \n";

my $first_codon = substr($zika_DNA, ($start_index + 3), 3);
print "First codon after start codon is $first_codon \n";

my $second_codon = substr($zika_DNA, ($start_index + 6), 3);

print "Second codon after start codon is $second_codon \n";

# Negative starting point counts from the end of the string.
my $last_codon = substr($zika_DNA, -3, 3);

print "Last codon is $last_codon \n";
