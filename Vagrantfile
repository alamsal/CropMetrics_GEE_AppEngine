
Vagrant.configure("2") do |config|
  config.vm.box = "box-cutter/ubuntu1404-desktop"
  config.vm.box_version = "2.0.18"
  config.vm.hostname = "crop.development.vm"
  
  config.vm.network :"private_network", ip: "192.168.0.32"
  config.vm.network :forwarded_port, guest: 80, host: 8000, auto_correct: true
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: true
  
  config.vm.synced_folder "./", "/var/crop_metrics"

  config.vm.provider "virtualbox" do |v|
  	v.memory = 4000
  	v.cpus = 1
  end
  
  config.vm.provision "shell", path: "makemachineready.sh" 
end
