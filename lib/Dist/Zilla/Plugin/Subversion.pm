#
# This file is part of Dist-Zilla-Plugin-Subversion
#
# This software is copyright (c) 2010 by Mark Gardner.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use strict;
use Modern::Perl;

package Dist::Zilla::Plugin::Subversion;
our $VERSION = '1.100890';

# ABSTRACT: update your Subversion repository after release

use Dist::Zilla;
1;

=pod

=head1 NAME

Dist::Zilla::Plugin::Subversion - update your Subversion repository after release

=head1 VERSION

version 1.100890

=head1 DESCRIPTION

This set of plugins for L<Dist::Zilla> can do interesting things for
module authors using L<Subversion|http://subversion.apache.org/> to track
their work. The following plugins are provided in this distribution:

=over

=item * L<Dist::Zilla::Plugin::Subversion::ReleaseDist>

=item * L<Dist::Zilla::Plugin::Subversion::Tag>

=back

=head1 AUTHOR

  Mark Gardner <mjgardner@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Mark Gardner.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

__END__
