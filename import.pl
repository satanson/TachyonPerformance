#!/usr/bin/perl -w
use strict;
use File::Basename;
my $dir=shift;
opendir my $DH, $dir or die "error $!";
for my $base(readdir $DH){
	my $file=$dir.$base;
	if (-f $file) {
		`bin/tachyon tfs copyFromLocal $file /$base`;
	}
}
