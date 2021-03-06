#!/usr/bin/perl -w

use strict;
use Test::More;
use WWW::Curl::Simple;

my @urls = (
'http://en.wikipedia.org/wiki/Main_Page',
'http://www.yahoomypoo.com',
);

plan tests => 1;

my $curl = WWW::Curl::Simple->new(fatal => 0);

{
    $curl->add_request(HTTP::Request->new(GET => $_)) foreach (@urls);
    
    my @res = $curl->perform;
    
    ok("we live! :p");
    
}


