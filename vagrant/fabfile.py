# Turns on local Vagrant box
# vagrant up

from fabric.api import sudo, run, env, cd


env.hosts = ['127.0.0.1']
env.user = 'vagrant'
env.password = 'vagrant'
env.port = 2222

def provision_box():
    update_system()
    
def update_system():
    sudo('pkg update -f')

def install_dependecies():
    sudo('pkg install gcc cmake perl5 cpan tar git -y')


def install_manually():
    sudo('tar xvzf .gz')
    cd('Alien-Doxyparse-0.10')
    sudo('perl MakeFile.pl')

def install_auto():
    sudo('cpan install "Alien::Doxyparse"')

