#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: print.pl
#
# print collects strings in double quotes separated by commas
# until the end of statement character ;
# print function while outputting text enclosed in double quotes
# replaces the variable names with their values (interpolation).
# print does not interpolate text inside single quotes, everything
# is printed as is.
# \n is for new line and \t is for tab. You can escape (overrule its
# special meaning in perl) a character by prefixing it with 
# backslash \,  e.g. \" \\
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/functions/print.html
# https://en.wikipedia.org/wiki/ASCII
# ------------------------------------------------------------------ 

my $human_genes = 20000;

print "You have $human_genes genes\n";
print ("You have $human_genes genes\n");

print "You have ";
print "$human_genes";
print " genes\n";

print "You have ",
      $human_genes, 
      " genes\n";

print "You have \"$human_genes\" genes\n";
print 'You have \"$human_genes\" genes\n';
print "\n";

my $bell = chr(7);
print $bell;
