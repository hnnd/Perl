#!/usr/bin/perl -w
use strict;

# ------------------------------------------------------------------ 
# File name: hashes.pl
#
# A hash is a variable type akin to an array that can hold a number 
# of values. However, instead of indexing values with integers, it
# uses a unique name, called a key, for each entry. The name of a 
# hash begins with a percentage sign. A hash is defined by 
# comma-separated pairs of key and value, with a "fat arrow" in 
# between.
# If you want to see what keys are in a hash, you can use the keys
# function with the name of the hash. This returns a list containing
# all of the keys in the hash. The list is not always in the same 
# order, though.
# Code below illustrates some of the basic operations with hashes.
# 
# Version: 2.1
# Authors: H. Kocak and B. Koc, University of Miami
# References:
# https://en.wikipedia.org/wiki/Restriction_enzyme
# http://perldoc.perl.org/perldata.html
# ------------------------------------------------------------------ 

my %restriction_enzymes = ("EcoRI" => "GAATTC", 
                            "AluI" => "AGCT", 
                            "NotI" => "GCGGCCGC", 
                            "TaqI" => "TCGA"
                          );

print %restriction_enzymes;
print "\n";

my @key_list = keys %restriction_enzymes;
print "@key_list\n";

# To get a list of values
my @value_list = values %restriction_enzymes;
print "@value_list\n";

# To fetch any value from a hash by referring to $hashname{key}, 
# or modify it in place just like any other scalar.

my $EcoRI_value = $restriction_enzymes{"EcoRI"};

print "The recognition site of EcoRI is ", $EcoRI_value, "\n"; 

# To add to an existing hash
$restriction_enzymes{"EcoRV"} = "GATATC";

@key_list = keys %restriction_enzymes;
print "@key_list\n";

@value_list = values %restriction_enzymes;
print "@value_list\n";

# To delete an entry with a given key  
delete $restriction_enzymes{"EcoRV"};

@key_list = keys %restriction_enzymes;
print "@key_list\n";

@value_list = values %restriction_enzymes;
print "@value_list\n";
