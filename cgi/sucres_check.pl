#!/usr/bin/perl

use CGI::Carp qw(fatalsToBrowser);
use CGI qw/:cgi :form escapeHTML/;
use Encode;
use JSON::PP;

use strict;
use utf8;

my $debug = 0;

my $code = decode utf8=>param('code');
my $product = decode utf8=>param('product');
my $name = decode utf8=>param('name');
my $answer = decode utf8=>param('answer');
my $actual = decode utf8=>param('actual');
my $points = decode utf8=>param('points');

open (OUT, ">>" , "/home/sucres/logs/sugar_log");
print OUT remote_addr() . "\t" . time() . "\t" . $product . "\t" . $code . "\t" . $actual . "\t" . $answer . "\t" . $points . "\n";
close OUT;


print "Content-Type: text/html; charset=UTF-8\r\n\r\n";
