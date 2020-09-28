#!/usr/bin/perl -w
use strict;
use LWP::Simple;

# -------------------------------------------------------------------
# File name: get_fasta_nih.pl
#
# This program downloads a fasta file from NCBI.
# GeneId or accession number and the name of the local file to save in
# must be provided as command line arguments.
# Example usage: ./get_fasta_nih.pl XM_002295694.1 BRCA2.fasta
# You can change the filename to a file of you choosing.
# 
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://www.ncbi.nlm.nih.gov/nuccore/XM_002295694.1?report=fasta
# http://www.ncbi.nlm.nih.gov/books/NBK25501/
# http://perldoc.perl.org/perlfaq9.html
# ------------------------------------------------------------------

if ($#ARGV < 1) {
  die "Please supply a GeneId(gi) number  and a file name as arguments!"; 
}

my $gi = $ARGV[0];
my $filename = $ARGV[1];

my $url     = "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi";
my $db      = "db=nuccore";
my $id      = "id=$gi";
my $rettype = "rettype=fasta";
my $retmode = "retmode=text";

getstore("$url?$db&$id&$rettype&$retmode", $filename);
