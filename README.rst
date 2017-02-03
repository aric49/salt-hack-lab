=================
Salt Hacking!!!
=================

A Salt Demo using Vagrant.

Forked from: https://github.com/UtahDave/salt-vagrant-demo.git

Instructions
============

Run the following commands in a terminal. Git, VirtualBox and Vagrant must
already be installed.

.. code-block:: bash

    git clone https://github.com/UtahDave/salt-vagrant-demo.git
    cd salt-vagrant-demo
    vagrant plugin install vagrant-vbguest
    vagrant up


This will download an Ubuntu  VirtualBox image and create five virtual
machines for you. One will be a Salt Master named `master` and four will be Salt
Minions named `minion1` and `minion2`, etc.  The Salt Minions will point to the Salt
Master and the Minion's keys will already be accepted, with the exception of Minion3 and 4.
to give practice accepting keys. 

You can then run the following commands to log into the Salt Master and begin
using Salt.

.. code-block:: bash

    vagrant ssh master
    sudo salt \* test.ping
