# 
# This file is part of Audio-MPD-Common
# 
# This software is copyright (c) 2007 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use 5.008;
use warnings;
use strict;

package Audio::MPD::Common::Types;
our $VERSION = '1.093190';


# ABSTRACT: types used in the distribution

use Moose::Util::TypeConstraints;
use Sub::Exporter;
use Sub::Exporter -setup => { exports => [ qw{ State } ] };

use Audio::MPD::Common::Time;

enum 'State' => qw{ play stop pause };

coerce 'Audio::MPD::Common::Time'
    => from 'Str'
    => via { Audio::MPD::Common::Time->new(time=>$_) };


1;


=pod

=head1 NAME

Audio::MPD::Common::Types - types used in the distribution

=head1 VERSION

version 1.093190

=head1 DESCRIPTION

This module implements the specific types used by the distribution, and
exports them. It is using L<Sub::Exporter> underneath, so you can use
all the shenanigans to change the export names.

Current types defined and exported:

=over 4

=item * State - a simple enumeration, allowing C<play>, C<stop>
and C<pause>.

=back

It also defines a type coertion from C<Str> to C<Audio::MPD::Common::Time>.

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2007 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__