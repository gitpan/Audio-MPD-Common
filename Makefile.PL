
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Audio-MPD-Common',
  NAME      => 'Audio::MPD::Common',
  AUTHOR    => "Jerome\ Quelin",
  ABSTRACT  => "common\ helper\ classes\ for\ mpd",
  VERSION   => '1.093190',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "base" => '0',
    "MooseX::Has::Sugar" => '0',
    "MooseX::Types::Moose" => '0',
    "English" => '0',
    "overload" => '0',
    "Sub::Exporter" => '0',
    "Moose::Util::TypeConstraints" => '0',
    "Readonly" => '0',
    "Test::More" => '0',
    "perl" => '5.008',
    "File::Find" => '0',
    "Moose" => '0.92',
  },
  test => {TESTS => 't/*.t'}
);

