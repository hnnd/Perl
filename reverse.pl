#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: reverse.pl
#
# reverse(STRING) returns the reverse of STRING.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# https://en.wikipedia.org/wiki/Primer_%28molecular_biology%29#/media/Fi
# http://www.ncbi.nlm.nih.gov/nuccore/226377833?report=fasta
# http://perldoc.perl.org/functions/reverse.html
# ------------------------------------------------------------------ 

my $zika_DNA = "CATGTGTGACGCCACCATGA";
print "Zika segment\t\t $zika_DNA \n";

my $reversed_zika_DNA;
$reversed_zika_DNA = reverse($zika_DNA);

print "Reversed zika segment\t $reversed_zika_DNA \n";
