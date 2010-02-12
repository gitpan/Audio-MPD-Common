
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'common helper classes for mpd',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'dist_name' => 'Audio-MPD-Common',
                       'script_files' => [],
                       'module_name' => 'Audio::MPD::Common',
                       'requires' => {
                                       'MooseX::Has::Sugar' => 0,
                                       'MooseX::Types::Moose' => 0,
                                       'English' => 0,
                                       'overload' => 0,
                                       'Moose::Util::TypeConstraints' => 0,
                                       'Readonly' => 0,
                                       'Test::More' => 0,
                                       'perl' => '5.008',
                                       'File::Find' => 0,
                                       'File::Temp' => 0,
                                       'Moose' => '0.92'
                                     },
                       'license' => 'perl'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
