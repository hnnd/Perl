#!/usr/bin/perl -w
use strict;

# -----------------------------------------------------------------
# File name: write_to_file.pl
#
# Code below opens a file and writes information about a DNA sequence,
# in FASTA format. Finally, it reports if the file is created.
# You can change the filename to a file of your choosing.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://www.esa.int/Our_Activities/Space_Science/Rosetta/Rosetta_s_comet_contains_i$
# http://https://en.wikipedia.org/wiki/DNA_codon_table
# http://perldoc.perl.org/functions/-X.html
# http://perldoc.perl.org/functions/open.html
# ----------------------------------------------------------------

my $filename = "Rosetta_partial.fasta";
open (FILE_TO_WRITE, ">", "$filename")             # ">" to overwrite
     or die "Cannot open $filename to write: $!";  # ">>" to append 

print FILE_TO_WRITE ">gi|210|ref|CSC_210.1| Rosetta partial genome\n";
print FILE_TO_WRITE "ATG\n";
print FILE_TO_WRITE "GGT";
print FILE_TO_WRITE "GGC";
print FILE_TO_WRITE "GGA";
print FILE_TO_WRITE "GGG\n";
print FILE_TO_WRITE "TGA";

close(FILE_TO_WRITE);

if (-e $filename){ 
  print "Rosetta partial genome is written to $filename file successfully!\n";
}
