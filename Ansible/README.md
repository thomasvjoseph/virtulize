# Vagrant Boxes for Ansible Practice 
Here it will initialize 4 virtual machine with cent-os using Vagrant along with VirtualBox

Vagrant is a tool for building and managing virtual machine environments in a single workflow. With an easy-to-use workflow and focus on automation
It uses virtualisation providers like Oracle Virtual box to create VMs
It just provides an efficient way to demonstrate the VMs created in Oracle Virtual box  (or) other virtualisation providers.
We can create Virtual machines and provision them by typing few lines of code in a configuration file named “Vagrantfile.” using 

        vagrant init

# Vagrantfile

In Vagrant operating system image is called as Box. Like any traditional VM creation strategy, for any VM creation, we must have an ISO package of the Operating system

        Vagrant.configure("2") do |config|

         config.vm.box = "geerlingguy/centos7"

        end

When you are provisioning (or) bring up your VM for the first time with vagrant upcommand.  Vagrant will check the availability of the box in local,

The first line is the current version of the Vagrant, it's API V2. Config is the variable name used in that statement. It's written in Ruby.

        config.hostmanager.enabled = true 

        config.hostmanager.manage_host = true

vagrant-hostmanager is a Vagrant plugin that manages the hosts file on guest machines (and optionally the host). Its goal is to enable resolution of multi-machine environments deployed with a cloud provider where IP addresses are not known in advance

        config.vm.provider "virtualbox" do |vb| 
           vb.gui = true
           vb.memory = "1024"
           vb.cpus = 2 
        end
         
It will define the provider we are going use for provisioning our VM. In our case it’s virtualbox. It will have meomory of 1 GB and 2 CPU power, when it's booting it
will also load the Virtual Box 

The Vagrant Commands are following

        vagrant up: Bring a box online.
        vagrant status: Show current box status.
        vagrant suspend: Pause the current box.
        vagrant resume: Resume the current box.
        vagrant halt: Shutdown the current box.

First of we need to install any of the VM provisioning,here am using Virtual Box. And also install Vagrant on your local machine

For more follow https://developer.hashicorp.com/vagrant/docs

Also it having 2 scripts, one is workstation and other is client. It will install Ansible and Python. Also it will create a new user with sudo privilleges. 
 
