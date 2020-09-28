#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: concatenation.pl
#
# Binary operator "." concatenates two strings.
# The code below concatenates the first four codons for GFP.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# https://en.wikipedia.org/wiki/RNA_codon_table
# http://www.abcam.com/recombinant-a-victoria-gfp-protein-ab84191.html
# ------------------------------------------------------------------ 

my $GFP_amino_acid_seq = "MSKGEELFTGVVPILVELDG...HGMDELYK";
print "Green fluorescent protein sequence: $GFP_amino_acid_seq \n";
my $M_codon = "AUG";
my $S_codon = "UCA";
my $K_codon = "AAA";
my $G_codon = "GGU";

my $RNA_sequence;

$RNA_sequence = $M_codon;
$RNA_sequence = $RNA_sequence.$S_codon;
print "RNA sequence: $RNA_sequence \n";
$RNA_sequence = $RNA_sequence.$K_codon;
$RNA_sequence = $RNA_sequence.$G_codon;

print "$RNA_sequence could code amino acid sequence MSKG \n";
