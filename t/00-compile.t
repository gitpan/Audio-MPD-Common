use 5.006;
use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::Compile 2.039

use Test::More  tests => 10 + ($ENV{AUTHOR_TESTING} ? 1 : 0);



my @module_files = (
    'Audio/MPD/Common.pm',
    'Audio/MPD/Common/Item.pm',
    'Audio/MPD/Common/Item/Directory.pm',
    'Audio/MPD/Common/Item/Playlist.pm',
    'Audio/MPD/Common/Item/Song.pm',
    'Audio/MPD/Common/Output.pm',
    'Audio/MPD/Common/Stats.pm',
    'Audio/MPD/Common/Status.pm',
    'Audio/MPD/Common/Time.pm',
    'Audio/MPD/Common/Types.pm'
);



# no fake home requested

my $inc_switch = -d 'blib' ? '-Mblib' : '-Ilib';

use File::Spec;
use IPC::Open3;
use IO::Handle;

open my $stdin, '<', File::Spec->devnull or die "can't open devnull: $!";

my @warnings;
for my $lib (@module_files)
{
    # see L<perlfaq8/How can I capture STDERR from an external command?>
    my $stderr = IO::Handle->new;

    my $pid = open3($stdin, '>&STDERR', $stderr, $^X, $inc_switch, '-e', "require q[$lib]");
    binmode $stderr, ':crlf' if $^O eq 'MSWin32';
    my @_warnings = <$stderr>;
    waitpid($pid, 0);
    is($?, 0, "$lib loaded ok");

    if (@_warnings)
    {
        warn @_warnings;
        push @warnings, @_warnings;
    }
}



is(scalar(@warnings), 0, 'no warnings found') if $ENV{AUTHOR_TESTING};


