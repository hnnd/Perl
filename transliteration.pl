#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: transliteration.pl
#
# The binding operator =~ binds a scalar expression to a pattern match. 
# tr / / / changes all occurrences of characters in the first cell to
# the corresponding characters in the second cell.
# The code below converts a DNA segment to RNA. Also it computes the 
# complementary strand.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perlop.html#Binding-Operators
# http://perldoc.perl.org/functions/tr.html
# http://www.ncbi.nlm.nih.gov/nuccore/226377833?report=fasta
# https://en.wikipedia.org/wiki/DNA
# https://en.wikipedia.org/wiki/RNA
# ------------------------------------------------------------------ 

my $zika_DNA = "CATGTGTGACGCCACCATGA";
print "Zika DNA segment is $zika_DNA \n";

my $zika_RNA;
$zika_RNA = $zika_DNA;
$zika_RNA =~ tr/T/U/;
print "Zika RNA segment is $zika_RNA \n";

print "\n";

my $zika_DNA_complement = $zika_DNA;
$zika_DNA_complement =~ tr/ACGT/TGCA/;
print "Original   segment: $zika_DNA \n";
print "Complement segment: $zika_DNA_complement \n";
