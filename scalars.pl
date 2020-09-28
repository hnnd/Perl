#!/usr/bin/perl -w
use strict;

# -------------------------------------------------------------------
# File name: scalars.pl
#
# With use strict; variables must be  declared with keyword my.
# Scalar variables in Perl start with $ sign followed by letter(s)
# and combination of letters, digits or underscore (no white spaces).
# Scalar variables can hold  numbers or strings (in double quotes).
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perldata.html
# https://en.wikipedia.org/wiki/Green_fluorescent_protein
# https://en.wikipedia.org/wiki/Exon
# ------------------------------------------------------------------

my $human_genes;
$human_genes = 20000;              # Not 20,000 or 20 000

my $exons_per_gene = 8.8;

my $protein_name = "GFP";
my $protein_seq = "MSKGEELFTG...";

print "Humans have approximately $human_genes genes\n";
print "The protein sequence of $protein_name is: $protein_seq\n";

my $human_exons = $exons_per_gene * $human_genes;
print "Average number of human exons: $human_exons\n";

$human_genes = $human_genes + 500;
print "Human genes: $human_genes\n";

# After changing $human_genes, recalculate the average.
$human_exons = $exons_per_gene * $human_genes;

print "Average number of human exons: $human_exons\n";
