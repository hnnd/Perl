#!/usr/bin/perl -w
use strict;

# -------------------------------------------------------------------
# File name: read_from_file.pl
#
# This program opens a file, then reads the file line by line and 
# prints out the lines to screen.
# Program exits if the file does not exist or cannot be opened.
# Currently, the file to read is the file containing this code.
# You can change the filename to a file of you choosing. 
#
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# http://perldoc.perl.org/functions/open.html
# ------------------------------------------------------------------

my $filename = "read_from_file.pl";

open (FILE_TO_READ, "<", "$filename")
  or die "Cannot open file $filename : $!";

while (my $line = <FILE_TO_READ>) {
  print "$line";
}

close (FILE_TO_READ);
