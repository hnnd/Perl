#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------
# File name: subroutines.pl
#
# Arguments (parameters) passed to a subroutine are automatically
# stored in a special array named @_ which is private to the 
# subroutine. For example, statement my ($arg1, $arg2) = @_
# creates two private variables and sets their values. 
# Subroutine below takes a DNA segment and returns the corresponding
# RNA segment as a string.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://www.ncbi.nlm.nih.gov/nuccore/226377833?report=fasta
# http://perldoc.perl.org/functions/sub.html
# ------------------------------------------------------------------

my $zika_DNA_segment = "AGTTGTTGATCTGTGTGAGTCAGACTGCG";
print "Zika DNA segment is $zika_DNA_segment. \n";

my $zika_RNA_segment;
$zika_RNA_segment = DNAtoRNA($zika_DNA_segment);
print "Zika RNA segment is $zika_RNA_segment. \n";

# ***********************************************
# DNAtoRNA
# ***********************************************
# This subroutine takes a DNA sequence and returns
# corresponding RNA sequence.
# In  : DNA sequence as a string scalar variable.
# Out : RNA sequence as a string scalar variable.
# ***********************************************
sub DNAtoRNA{
  my ($segment) = @_; 
  $segment =~ tr/Tt/Uu/;

  return $segment;
}
