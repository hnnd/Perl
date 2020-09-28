#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: index_function.pl
#
# index() function has two forms:
# index(string, substring) searches for substring inside string 
# from the beginning of string; it returns the index (position) of the
# first character of substring inside string. If substring is not
# found, index returns -1.
# index(string, substring, starting_position) searches for substring 
# inside string from starting_position, not from the beginning.
# uc(string) returns string in all uppercase.
# lc(string) returns string in all lowercase.
# Code below computes the index of start codon in a DNA segment.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://www.ncbi.nlm.nih.gov/nuccore/NC_012532.1?report=genbank
# http://perldoc.perl.org/functions/index.html
# ------------------------------------------------------------------ 

my $zika_DNA = "catgtgtgacgccaccatga";
print "Zika DNA segment is $zika_DNA \n";
$zika_DNA = uc($zika_DNA);
print "Zika DNA segment is $zika_DNA \n";

my $start_codon = "ATG";

my $first_index = index($zika_DNA, $start_codon);
print "First start codon index is $first_index \n";

my $second_index = index($zika_DNA, $start_codon, 
                 ($first_index + length($start_codon)) );
print "Second start codon index is $second_index \n";

my $last_index = rindex($zika_DNA, $start_codon);
print "Last start codon index is $last_index \n";

# index return -1 if cannot find it.
$start_codon = "atg";
my $start_lc = index($zika_DNA, $start_codon);
print "Start codon $start_codon index is $start_lc \n";
