vagrant-graphite
==================

Instant provisioning of [PostgreSQL (Version 9.2)][1] with the help of [Vagrant][2] & [Puppet][3] 

What will it do?
----------------

1. Download Ubuntu 12.04
1. Create a new virtual machine, install Ubuntu and forward port 5432 to 5432
1. Inside the virtual machine 
  1. Download & Install & Start [PostgreSQL][1]
 
Do it!
------

1. Install [VirtualBox][4] and [Vagrant][2] and make sure you have [git][5] available.
1. Open your favorite terminal (mine is [iTerm2][7]) and clone the github repository 

```
git clone --recursive https://github.com/tstangenberg/vagrant-postgresql.git
cd vagrant-postgresql
```

1. Start up and provision automatically all dependencies in the vm

```
vagrant up --provision
```

1. Open your favorite SQL Client and connect to jdbc:postgresql://localhost:5432/dbname with user "mydatabaseuser" and password "mypassword"


[1]: http://www.postgresql.org/
[2]: http://www.vagrantup.com/
[3]: http://puppetlabs.com/
[4]: https://www.virtualbox.org 
[5]: http://git-scm.com
[6]: http://www.python.org/
[7]: http://www.iterm2.com