#!perl

# $Id: manifest.t,v 1.2 2013/07/23 11:27:40 Paulo Exp $

use strict;
use warnings;
use Test::More;

unless ( $ENV{RELEASE_TESTING} ) {
    plan( skip_all => "Author tests not required unless RELEASE_TESTING" );
}

eval "use Test::CheckManifest 0.9";
plan skip_all => "Test::CheckManifest 0.9 required" if $@;
ok_manifest();
