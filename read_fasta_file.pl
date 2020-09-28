#!/usr/bin/perl -w
use strict;

# -------------------------------------------------------------------
# File name: read_fasta_file.pl
#
# We will open a file containing information about a DNA sequence,
# in FASTA format. Then we will read the file line-by-line, except
# line starting with > sign; remove newline characters and concatenate 
# lines into a single string. 
# The filename will be provided as a command line argument.
# This means that it will be supplied when we run our program,
# directly after the name of the program.      
# Example: ./read_fasta_file.pl BRAC2.fasta	
# The command line arguments are stored in an array called @ARGV.
# $#ARGV is length of @ARGV minus 1.
# Our program will exit if the number of arguments is not 1,
# or the file does not exist or cannot be opened.
# You can change the filename to a file of your choosing.
# 
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# https://en.wikipedia.org/wiki/BRCA2
# http://www.ncbi.nlm.nih.gov/nuccore/224004157?report=fasta
# ------------------------------------------------------------------

if ($#ARGV != 0) {
  die "Please supply a file name as a command line argument!"; 
}

my $filename = $ARGV[0];

open (FILE_TO_READ, "<", "$filename")
  or die "Cannot open file $filename : $!";

my $sequence;

while (my $line = <FILE_TO_READ>) {
  if ($line !~ /^>/) {                
    chomp($line);
    $sequence = $sequence.$line;
  }
}

print "$sequence\n";
close (FILE_TO_READ);
