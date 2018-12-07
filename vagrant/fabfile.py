# Turns on local Vagrant box
# vagrant up

from fabric.api import sudo, run, env, cd, task
from fabtools.vagrant import vagrant

env.hosts = ['127.0.0.1']
env.user = 'vagrant'
env.password = 'vagrant'
env.port = 2222

@task
def some_task():
    run('echo hello', shell=False)

@task
def provision_box():
    update_system()

@task
def update_system():
    sudo('pkg update -f')

@task
def install_dependecies():
    
    run('sudo pkg install -y git', shell=False)
    run('sudo pkg install -y wget', shell=False)
    run('sudo pkg install -y gcc', shell=False)
        
    run('sudo pkg -y install perl5', shell=False)
    run("sudo perl -MCPAN -e 'CPAN::Shell->install(CPAN::Shell->r)'", shell=False) # will take a while...
    


# def install_manually():
#     sudo('tar xvzf .gz')
#     cd('Alien-Doxyparse-0.10')
#     sudo('perl MakeFile.pl')

@task
def install_auto():
    sudo('cpan -i "Alien::Doxyparse"', shell=False)
