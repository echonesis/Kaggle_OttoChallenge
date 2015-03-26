#!/usr/bin/perl -w
use strict;
use warnings;

open(FILE1, "<$ARGV[0]");
open(FILE2, ">$ARGV[1]");

while(<FILE1>){
	chomp;
	if($_ !~ /^id/){
		my @array = split(/,/, $_);
		#my $class_type = substr($array[$#array], 6);
		#print FILE2 "$array[$#array]\n";
		
		for (my $i = 1 ; $i <= $#array ; $i++){
			print FILE2 "$array[$i],";
		}
		print FILE2 "\n";
	}
}

close(FILE2);
close(FILE1);