#!perl
# -*- mode: cperl; cperl-indent-level: 4 -*-
#
# This file is part of Dist-Zilla-Plugin-Subversion
#
# This software is copyright (c) 2010 by Mark Gardner.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use 5.010;
use feature ':5.10';
use strict;
use warnings;
use utf8;
use mro 'c3';


BEGIN {
    unless ( $ENV{RELEASE_TESTING} ) {
        require Test::More;
        Test::More::plan(
            skip_all => 'these tests are for release candidate testing' );
    }
}

use Test::More;

eval "use Test::Pod::Coverage 1.08";
plan skip_all => "Test::Pod::Coverage 1.08 required for testing POD coverage"
    if $@;

eval "use Pod::Coverage::TrustPod";
plan skip_all => "Pod::Coverage::TrustPod required for testing POD coverage"
    if $@;

all_pod_coverage_ok( { coverage_class => 'Pod::Coverage::TrustPod' } );
