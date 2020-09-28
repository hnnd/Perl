#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: for.pl
#
# Syntax of the for loop for iterations:
# for (initialization; test; increment){
#
# }
#
# int() returns the integer part of a decimal number.
#
# Problem: Assume the population of Florida sandhill cranes grows by 
# 1.94% annually. If we start with a population of 425 birds, how big 
# will the population be after 28 years? Using a for loop, code below 
# computes and prints the population sizes for 28 years.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# https://sora.unm.edu/sites/default/files/journals/jfo/v061n02/p0224-p0231.pdf
# https://www.swfwmd.state.fl.us/education/interactive/springscoast/sandhillcranes.shtml
# http://perldoc.perl.org/perlsyn.html#Compound-Statements
# ------------------------------------------------------------------ 

# Initial population and growth rate
my $population = 425;
my $growth_rate = 0.0194;

for (my $year = 0; $year <= 28; $year++) {
  print "At year $year, the population is ", $population, "\n";
# print "At year $year, the population is ", int($population + 0.5),"\n";
  $population = $population + $growth_rate * $population;
}
