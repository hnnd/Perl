#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: count_with_hashes.pl
#
# Code below counts the number of each codon that appears in a DNA
# segment.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perldata.html
# http://www.ncbi.nlm.nih.gov/nuccore/224004157?report=genbank
# ------------------------------------------------------------------ 

my %codon_count; 

my $DNA_seq = "gggtgcgacgattcattgttttcggacaagtggataggcaaccactaccggtggattgtc";
print "Sequence: $DNA_seq\n";

my $DNA_length = length($DNA_seq);

for( my $index = 0; $index <= $DNA_length - 3; $index = $index + 3){
  my $codon = substr($DNA_seq, $index, 3);

  if(not exists $codon_count{$codon}){
    $codon_count{$codon} = 0;
  }

  $codon_count{$codon} = $codon_count{$codon} + 1;  
}

my @key = keys %codon_count;
my @value = values %codon_count;

for (my $i=0; $i < scalar(@key); $i++){
  print "$key[$i] => $value[$i] \n";
}
