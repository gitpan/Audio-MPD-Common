#
# This file is part of Audio::MPD::Common
# Copyright (c) 2007 Jerome Quelin, all rights reserved.
#
# This program is free software; you can redistribute it and/or modify
# it under the same terms as Perl itself.
#
#

package Audio::MPD::Common::Item::Song;

use strict;
use warnings;

use overload '""' => \&as_string;
use Readonly;

use base qw[ Class::Accessor::Fast Audio::MPD::Common::Item ];
__PACKAGE__->mk_accessors( qw[ album artist date file genre id pos title track time ] );

#our ($VERSION) = '$Rev: 5645 $' =~ /(\d+)/;

Readonly my $SEP => ' = ';


#
# my $str = $song->as_string;
#
# Return a string representing $song. This string will be;
#  - either "album = track = artist = title"
#  - or     "artist = title"
#  - or     "title"
#  - or     "file"
# (in this order), depending on the existing tags of the song. The last
# possibility always exist of course, since it's a path.
#
sub as_string {
    my ($self) = @_;

    return $self->file unless defined $self->title;
    my $str = $self->title;
    return $str unless defined $self->artist;
    $str = $self->artist . $SEP . $str;
    return $str unless defined $self->album && defined $self->track;
    return join $SEP,
        $self->album,
        $self->track,
        $str;
}

1;

__END__


=head1 NAME

Audio::MPD::Common::Item::Song - a song object with some audio tags


=head1 DESCRIPTION

C<Audio::MPD::Common::Item::Song> is more a placeholder for a
hash ref with some pre-defined keys, namely some audio tags.


=head1 PUBLIC METHODS

This module has a C<new()> constructor, which should only be called by
C<Audio::MPD::Common::Item>'s constructor.

The only other public methods are the accessors - see below.


=head2 Accessors

The following methods are the accessors to their respective named
fields: C<album()>, C<artist()>, C<dat()>, C<file()>, C<genre()>, C<id>,
C<pos>, C<title()>, C<track()>, C<time()>. You can call them either with
no arg to get the value, or with an arg to replace the current value.


=head2 Methods


=over 4

=item $song->as_string()

Return a string representing $song. This string will be:

=over 4

=item either "album = track = artist = title"

=item or "artist = title"

=item or "title"

=item or "file"

=back

(in this order), depending on the existing tags of the song. The last
possibility always exist of course, since it's a path.

=back


=head1 SEE ALSO

=over 4

=item L<Audio::MPD>

=item L<POE::Component::Client::MPD>

=back


=head1 AUTHOR

Jerome Quelin, C<< <jquelin at cpan.org> >>


=head1 COPYRIGHT & LICENSE

Copyright (c) 2007 Jerome Quelin, all rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
