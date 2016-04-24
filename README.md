# vagrant-infratest
Salt [infratest execution module](https://github.com/ssplatt/saltstack-infratest-module) demo environment.  This is will create one virtual machine, copy over the Salt things, then highstate the virtual machine.  As a part of the highstate, the infratest module will verify the state of the machine based on the specified pillar.

The only formula included is the [infratest-formula](https://github.com/ssplatt/infratest-formula).

[![asciicast](https://asciinema.org/a/43340.png)](https://asciinema.org/a/43340)

# Usage
The infratest-formula is a submodule, so make sure you clone with --recursive. Otherwise, you will need to take extra steps to pull the formula code. Once the code is cloned, you can simple use `vagrant up` to run it. Edit the files in `saltstack/pillar` as you'd like.

```bash
git clone --recursive https://github.com/ssplatt/infratest-formula.git
vagrant up
```
# Development and Testing
Ensure Vagrant is installed.

(Mac) Install and setup brew:
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Install Cask:
```
brew install cask
```
Install Vagrant:
```
brew cask install vagrant
```

## Test in the Cloud
If you have a Linode account, you can use `vagrant up --provider=linode` to run this test in the cloud. If you use another cloud provider, you can simply use the existing code as an example and replace what you need to use your service.

See [displague/vagrant-linode](https://github.com/displague/vagrant-linode) for more information on the Linode driver for Vagrant.
