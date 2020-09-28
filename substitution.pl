#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: substitution.pl
#
# The binding operator =~ binds a scalar expression to a pattern match.
# s/ / / changes the occurrence of string (pattern) in the first 
# cell to the corresponding string in the second cell.
# s/ / /g acts globally by changing all occurrences. 
# The code below cleans up a segment of DNA in genbank format and
# highlights the start codon ATG.
# 
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perlop.html#Binding-Operators
# http://perldoc.perl.org/functions/s.html
# http://www.ncbi.nlm.nih.gov/nuccore/226377833?report=genbank
# ------------------------------------------------------------------ 

my $zika_DNA = "601 catgtgtgac gccaccatga gttatgagtg";
print "Original Zika DNA\t\t: $zika_DNA \n";

$zika_DNA =~ s/ //;
print "Replace space with nothing\t: $zika_DNA \n";

$zika_DNA =~ s/ //g;
print "Replace spaces with nothing\t: $zika_DNA \n";

$zika_DNA =~ s/atg/ATG/;
print "First  substitution\t\t: $zika_DNA \n";

$zika_DNA =~ s/atg/ATG/g;
print "Global substitution\t\t: $zika_DNA \n";

$zika_DNA =~ s/[0123456789]//g;
print "Replace numbers with nothing\t: $zika_DNA \n";
