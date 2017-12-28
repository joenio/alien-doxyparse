package Alien::Doxyparse;
use strict;
use warnings;
 
our $VERSION = '0.01';

use parent 'Alien::Base';

=head1 NAME

Alien::Doxyparse - Build and make available the doxyparse tool

=head1 SYNOPSIS

From a Perl script

  use Alien::Doxyparse;
  use Env qw( @PATH );
  unshift @PATH, Alien::Doxyparse->bin_dir;  # doxyparse is now in your path

From Alien::Base Build.PL

  use Alien::Base::ModuleBuild;
  my $builder = Module::Build->new(
    alien_bin_requires => [ 'Alien::Doxyparse' ],
  );
  $builder->create_build_script;

=head1 DESCRIPTION

B<**this is a beta release**>

This distribution installs L<Doxyparse|http://github.com/analizo/doxyparse> so that
it can be used by other Perl distributions. If already installed for your
operating system, and it can be found, this distribution will use the Doxyparse
that comes with your operating system, otherwise it will download it from the
Internet, build and install it from you.

=head1 SEE ALSO

=over

=item *

L<Alien>

=item *

L<Alien::Base>

=back

Similar modules:

=over

=item *

L<Alien::qd>

=item *

L<Alien::flex>

=item *

L<Alien::m4>

=item *

L<Alien::bison>


=item *

L<Alien::CMake>

=item *

L<Alien::ffmpeg>

=item *

L<Alien::Gearman>

=back

=head1 AUTHOR

Joenio Costa <joenio@joenio.me>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Joenio Costa.

This is free software; you can redistribute it and/or modify it under the same
terms as the Perl 5 programming language system itself.

=cut

1;
