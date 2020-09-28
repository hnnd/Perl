#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------
# File name: motif_match_global.pl
#
# Match operator m/()/g with memory searches for  PATTERN in STRING
# globally; the statement STRING =~ m/(PATTERN)/g becomes TRUE if 
# PATTERN is found; moreover, the found pattern is saved in a special 
# variable $1. PATTERN is specified using regular expressions.
# This program finds all the occurrences of a motif
# in a DNA sequence and reports the motifs found, their locations,
# and the total number of found motifs.
# pos() function returns the location just after the match
# the motif in the regular expression (here consists of
# substrings of A and/or T of lengths between 3 and 6).
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/functions/m.html
# http://www.ncbi.nlm.nih.gov/nuccore/224004157?report=fasta
# ------------------------------------------------------------------

my $sequence = "AATGAAGGGCCGCTACGATAAGGAACTTCGTAATTTCAG";
print "Sequence = $sequence \n";

my $motif = "[AT]{3,6}";
my $matched_motif;          #will hold the captured match
my $matched_location;       #will hold the index of the match
my $number_of_matches = 0;  #will hold the number of matches

while( $sequence =~ m/($motif)/g )   #g is for global, all matches
{
  $matched_motif = $1;
  $matched_location = pos($sequence) - length($matched_motif);
  $number_of_matches = $number_of_matches + 1;
  print "Match $number_of_matches: $matched_motif at $matched_location\n"; 
}

print "\nTotal number of matches is: $number_of_matches\n";
