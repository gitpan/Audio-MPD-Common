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

package Audio::MPD::Common::Item::Directory;
our $VERSION = '1.093170';


# ABSTRACT: a directory object

use Moose;

use base qw{ Audio::MPD::Common::Item };


# -- public attributes


has directory => ( is=>'rw', isa=>'Str', required=>1 );

1;


=pod

=head1 NAME

Audio::MPD::Common::Item::Directory - a directory object

=head1 VERSION

version 1.093170

=head1 ATTRIBUTES

=head2 $item->directory;

The path to the item's directory.

=cut

=pod

=head1 DESCRIPTION

L<Audio::MPD::Common::Item::Directory> is more a placeholder with some
attributes.

The constructor should only be called by L<Audio::MPD::Common::Item>'s
constructor.

=head1 AUTHOR

Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2007 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__