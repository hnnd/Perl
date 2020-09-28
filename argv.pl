#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: argv.pl
#
# Command line arguments are provided directly after the name of 
# the program. The command line arguments are stored in an array 
# called @ARGV.
# $#ARGV is the length of ARGV - 1.
# Our program will print out the number and the list of arguments;
# will exit if no argument is provided.
# Example usage: ./args.pl red blue
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perlvar.html
# ------------------------------------------------------------------ 

if($#ARGV < 0) {
  die "Please provide a command line argument!\n"; 
}

print "First argument is $ARGV[0] \n";
print "Total number of arguments is ", scalar(@ARGV)," \n";

foreach my $argument (@ARGV){
  print "$argument\n";
}
