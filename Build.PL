use strict;
use lib 'inc';
use Alien::Doxyparse::ModuleBuild;
 
my $builder = Alien::Doxyparse::ModuleBuild->new(
  module_name => 'Alien::Doxyparse',
  dist_abstract => 'Build and make available the doxyparse tool',
  configure_requires => {
    'Module::Build' => 0.42,
    'Alien::Base::ModuleBuild' => 0,
  },
  requires => {
    'Alien::Base' => 0,
  },
  dist_author => 'Joenio Costa <joenio@joenio.me>',
  license => 'perl',
  meta_merge => {
    resources => {
      repository => 'http://github.com/joenio/alien-doxyparse'
    }
  },
);
 
$builder->create_build_script;
