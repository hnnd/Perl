#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------
# File name: motif_match_interactive.pl
#
# Match operator m/()/ with memory searches for  PATTERN in STRING;
# the statement STRING =~ m/(PATTERN)/ becomes TRUE if PATTERN is
# found; moreover, the found pattern is saved in a special variable
# $1. PATTERN is specified using regular expressions.
# Code below saves a sequence in string and asks the user for a motif.
# Program reports if the motif is found in the string.
# If a blank line in entered, the program exits.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perlre.html#Regular-Expressions
# http://perldoc.perl.org/functions/eval.html
# http://perldoc.perl.org/functions/qr.html
# http://www.ncbi.nlm.nih.gov/nuccore/224004157?report=fasta
# Example motifs to try: ATG     ^A.*G        ^A.*?G       [AT]ATT  
#                         *       T[AG][AG]    AT{2,}G      AT{2,}C
# ------------------------------------------------------------------

my $sequence = "AATGAAGGGCCGCTACGATAAGGAACTTCGTAATTTCAG";
print "Sequence = $sequence\n";

# In a loop, ask the user for a motif, search for the motif,
# and report if it was found.
# Exit if no motif is entered.

my $motif;

while( )  #An infinite loop
{
  print "Enter a motif to search for: ";
  $motif = <STDIN>;

  if( $motif =~ m/^\s*$/ ){       # to check for blank line
    last;                         # to leave the while loop
  }
  chomp($motif);                  # Remove the newline at the end of $motif

  # Check if the motif is a legal regular expression

  eval{ qr/$motif/ };

  if( $@ ){
    print "Motif $motif is an illegal regular expression! \n";
  }
  else{
    # Look for the motif and save it if found.
    # found motif is saved in special variable $1
    $sequence =~ m/($motif)/;   
    if( defined $1 ){
      print "I found $1 \n";
    }
    else{
      print "I could not find motif $motif \n";
    }
  }
}   #end of while loop

print "Bye!\n";
