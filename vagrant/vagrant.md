# Vagrant
[Vagrant](https://www.vagrantup.com/) allows users to create and configure lightweight, reproducible, and portable development environments. Vagrant offers a higher-level wrapper around virtualization software such as VirtualBox, VMware, KVM and Linux Containers.

CB-Geo has a customised, pre-configured virtual box for software development.

# Launching Vagrant CB-Geo Box
* Download and install virtualbox [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
* Download and install vagrant [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)
* [OPTIONAL] Launch vagrant terminal and login to Vagrant read access account: `vagrant login`, when prompted for a password use: `geotech-cb@eng.cam.ac.uk` & `C@mClay1958`

* To download and launch a virtual box instance:

	`vagrant init cb-geo/cbgeo; vagrant up --provider virtualbox`

* Launch virtualbox and start the cbgeo box. If the network isn’t working, make sure the virtualbox network (NAT) is switched-on.

# CB-Geo Virtual Box
* [CB-Geo VM](https://atlas.hashicorp.com/cb-geo/boxes/cbgeo)
* Built on Fedora 23 - x86 - 64
* User `root`: PW `C@mClay1958`
* User `cbgeo`: PW `Ge0mechanics`

## Software
* GCC 5.0 and Clang 3.7
* EMACS and VIM
* Voro++
* Boost libraries
* CPPCheck 1.7
* Python 3
* Doxygen
* Google test framework
* Meld
* Slack
* VNC server
* gitg
* Paraview 4.0
* Filezilla


