# 
# This file is part of Audio-MPD-Common
# 
# This software is copyright (c) 2007 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use strict;
use warnings;

package Audio::MPD::Common;
our $VERSION = '1.092900';


# ABSTRACT: common helper classes for mpd

1;



=pod

=head1 NAME

Audio::MPD::Common - common helper classes for mpd

=head1 VERSION

version 1.092900

=head1 DESCRIPTION

Depending on whether you're using a POE-aware environment or not, people
wanting to tinker with mpd (Music Player Daemon) will use either
L<POE::Component::Client::MPD> or L<Audio::MPD>.

But even if the run-cores of those two modules differ completely, they
are using the exact same common classes to represent the various mpd
states and information.

Therefore, those common classes have been outsourced to
L<Audio::MPD::Common>.

This module does not export any methods, but the dist provides the
following classes that you can query with perldoc:

=over 4

=item * L<Audio::MPD::Common::Item>

=item * L<Audio::MPD::Common::Item::Directory>

=item * L<Audio::MPD::Common::Item::Playlist>

=item * L<Audio::MPD::Common::Item::Song>

=item * L<Audio::MPD::Common::Stats>

=item * L<Audio::MPD::Common::Status>

=item * L<Audio::MPD::Common::Time>

=back 

Note that those modules should not be of any use outside the two mpd
modules afore-mentioned.

=head1 BUGS

Please report any bugs or feature requests to C<bug-audio-mpd-common at
rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Audio-MPD-Common>.
I will be notified, and then you'll automatically be notified of
progress on your bug as I make changes.

=head1 SEE ALSO

You may want to see the modules really accessing MPD:

=over 4

=item * L<Audio::MPD>

=item * L<POE::Component::Client::MPD>

=back 

You can also look for information on this module at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Audio-MPD-Common>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Audio-MPD-Common>

=item * Open bugs

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Audio-MPD-Common>

=back 

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2007 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut 



__END__