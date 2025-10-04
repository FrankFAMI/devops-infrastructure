Vagrant.configure("2") do |config|
  # Web server
  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/jammy64"
    web.vm.network "private_network", ip: "192.168.56.10"
    web.vm.provider "virtualbox" do |vb|
      vb.memory = 512
      vb.cpus = 1
      vb.name = "web-server"
    end
  end
  
  # Database server
  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/jammy64"
    db.vm.network "private_network", ip: "192.168.56.11"
    db.vm.provider "virtualbox" do |vb|
      vb.memory = 512
      vb.cpus = 1
      vb.name = "db-server"
    end
  end
  
  # Load balancer (optional)
  config.vm.define "lb" do |lb|
    lb.vm.box = "ubuntu/jammy64"
    lb.vm.network "private_network", ip: "192.168.56.12"
    lb.vm.provider "virtualbox" do |vb|
      vb.memory = 512
      vb.cpus = 1
      vb.name = "load-balancer"
    end
  end
end
