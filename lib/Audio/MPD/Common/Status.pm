# 
# This file is part of Audio-MPD-Common
# 
# This software is copyright (c) 2007 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use 5.008;
use strict;
use warnings;

package Audio::MPD::Common::Status;
our $VERSION = '1.092910';


# ABSTRACT: class representing MPD status

use Moose;
use Moose::Util::TypeConstraints;
use Audio::MPD::Common::Time;


# -- private types

subtype 'Int_0_100'
      => as 'Int'
      => where { $_ >= 0 && $_ <= 100 }
      => message { "$_ is not between 0 and 100" };
enum 'State' => qw{ play stop pause };
coerce 'Audio::MPD::Common::Time'
    => from 'Str'
    => via { Audio::MPD::Common::Time->new(time=>$_) };


# -- public attributes


has audio          => ( is=>'ro', isa=>'Str' );
has bitrate        => ( is=>'ro', isa=>'Int' );
has error          => ( is=>'ro', isa=>'Str' );
has playlist       => ( is=>'ro', isa=>'Int' );
has playlistlength => ( is=>'ro', isa=>'Int' );
has random         => ( is=>'ro', isa=>'Bool' );
has repeat         => ( is=>'ro', isa=>'Bool' );
has songid         => ( is=>'ro', isa=>'Int' );
has song           => ( is=>'ro', isa=>'Int' );
has state          => ( is=>'ro', isa=>'State' );
has time           => ( is=>'ro', isa=>'Audio::MPD::Common::Time', coerce=>1 );
has updating_db    => ( is=>'ro', isa=>'Int' );
has volume         => ( is=>'ro', isa=>'Int_0_100' );
has xfade          => ( is=>'ro', isa=>'Int' );


1;



=pod

=head1 NAME

Audio::MPD::Common::Status - class representing MPD status

=head1 VERSION

version 1.092910

=head1 DESCRIPTION

The MPD server maintains some information on its current state. Those
information can be queried with mpd modules. Some of those information
are served to you as an L<Audio::MPD::Common::Status> object.

An L<Audio::MPD::Common::Status> object does B<not> update itself
regularly, and thus should be used immediately.

Note: one should B<never> ever instantiate an L<Audio::MPD::Common::Status>
object directly - use the mpd modules instead.

=head1 ATTRIBUTES

=head2 $status->audio;

A string with the sample rate of the song currently playing, number of
bits of the output and number of channels (2 for stereo) - separated
by a colon.

=head2 $status->bitrate;

The instantaneous bitrate in kbps.

=head2 $status->error;

May appear in special error cases, such as when disabling output.

=head2 $status->playlist;

The playlist version number, that changes every time the playlist
is updated.

=head2 $status->playlistlength;

The number of songs in the playlist.

=head2 $status->random;

Whether the playlist is read randomly or not.

=head2 $status->repeat;

Whether the song is repeated or not.

=head2 $status->song;

The offset of the song currently played in the playlist.

=head2 $status->songid;

The song id (MPD id) of the song currently played.

=head2 $status->state;

The state of MPD server. Either C<play>, C<stop> or C<pause>.

=head2 $status->time;

An L<Audio::MPD::Common::Time> object, representing the time elapsed /
remainging and total. See the associated pod for more details.

=head2 $status->updating_db;

An integer, representing the current update job.

=head2 $status->volume;

The current MPD volume - an integer between 0 and 100.

=head2 $status->xfade;

The crossfade in seconds.



=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2007 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut 



__END__