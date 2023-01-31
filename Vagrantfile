Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
### Ansible Master or Workstation ###
  config.vm.define "m01" do |m01|
    m01.vm.box = "geerlingguy/centos7"
    m01.vm.hostname = "m01"
    m01.vm.network "private_network", ip: "192.168.56.12"
    m01.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.memory = "1024"
      vb.cpus = 2
    end
    m01.vm.provision "shell" do |s|
      p = File.expand_path("../", __FILE__)
      s.path = p + "\\workstation.sh"
    end
    ## OR ##	  
    #m01.vm.provision "shell",path: "workstation.sh"	  
  end  
### Ansible Workstation 1 or Slave 1  ####
  config.vm.define "app01" do |app01|
    app01.vm.box = "geerlingguy/centos7"
	  app01.vm.hostname = "app01"
    app01.vm.network "private_network", ip: "192.168.56.13"
    app01.vm.provision "shell" do |s|
      p = File.expand_path("../", __FILE__)
      s.path = p + "\\client.sh"
    end 	  
  end
### Ansible Workstation 2 or Slave 2  #### 
  config.vm.define "app02" do |app02|
    app02.vm.box = "geerlingguy/centos7"
	  app02.vm.hostname = "app02"
    app02.vm.network "private_network", ip: "192.168.56.14"
    app02.vm.provision "shell" do |s|
      p = File.expand_path("../", __FILE__)
      s.path = p + "\\client.sh"
    end 
  end 
### Ansible Workstation 3 or Slave 3  ####
  config.vm.define "app03" do |app03|
    app03.vm.box = "geerlingguy/centos7"
	  app03.vm.hostname = "app03"
    app03.vm.network "private_network", ip: "192.168.56.15"
    app03.vm.provision "shell" do |s|
      p = File.expand_path("../", __FILE__)
      s.path = p + "\\client.sh"
    end 
  end
end


#run following vagrant install hostmanage
#vagrant plugin install vagrant-hostmanager
