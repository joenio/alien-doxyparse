package Alien::Doxyparse::ModuleBuild;
 
use parent 'Alien::Base::ModuleBuild';
use IPC::Open3;

sub alien_name {
  'doxyparse';
}
 
sub alien_check_installed_version {
  if (`which doxyparse`) {
    my $pid = open3(\*CHLD_IN, \*CHLD_OUT, \*CHLD_ERR, "doxyparse", "--version");
    my $version = <CHLD_ERR>;
    return $version;
  }
  else {
    return undef;
  }
}

sub alien_bin_requires {
  {
    'Alien::flex' => 0,
    'Alien::bison' => 0,
    'Alien::cmake' => 0,
  }
}

sub alien_build_commands {
  [ 'cmake -G "Unix Makefiles" -Dbuild_parse=ON', 'make' ];
}

sub alien_install_commands {
  [ 'mkdir -p %s/bin', 'make install PREFIX=%s' ];
}

sub alien_repository {
  {
    protocol => 'https',
    host     => 'github.com',
    location => '/analizo/doxyparse/releases/download',
    pattern  => qr|([\d\.-]+)/doxyparse_([\d\.-]+)_amd64\.tar\.gz$|,
  };
}

1;
