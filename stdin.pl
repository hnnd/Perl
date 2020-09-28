#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: stdin.pl
#
# The line-input operator <STDIN> is used to get a scalar value from 
# the keyboard into a Perl program.
# Code below captures a line entered from the keyboard, removes the
# new line character "\n", and echoes the line to the screen.
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/perlvar.html
# http://perldoc.perl.org/functions/chomp.html
# ------------------------------------------------------------------ 

my $keyboard_entry;

print "Please type something and ENTER: ";
$keyboard_entry = <STDIN>;      # get the keyboard entry

chomp($keyboard_entry);         # remove newline character from line  

print "You typed: $keyboard_entry \n";
