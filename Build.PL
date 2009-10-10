
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
  module_name   => 'Audio::MPD::Common',
  license       => 'perl',
  dist_abstract => "common\ helper\ classes\ for\ mpd",
  dist_name     => "Audio\-MPD\-Common",
  dist_author   => [
"Jerome\ Quelin",
  ],
  requires      => {
    "base" => '0',
    "Test::More" => '0',
    "English" => '0',
    "File::Find" => '0',
    "ExtUtils::MakeMaker" => '0',
    "overload" => '0',
    "Moose::Util::TypeConstraints" => '0',
    "Readonly" => '0',
    "Moose" => '0',
  },
  script_files => [ qw() ],
);

$build->create_build_script;
