Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
  end
  config.vm.provision :shell, path: "bootstrap.sh"
  # Following command is an easy way to run a shell inline cmd at all times - even when you do vagrant up. Unfortunately, I cant get the update-rc.d to work, also vagrant folder is mounted at last step
  config.vm.provision :shell, :inline => "service elasticsearch start;service kibana start", run: "always"
  config.vm.network :forwarded_port, guest: 80, host: 30080
  config.vm.network :forwarded_port, guest: 9200, host: 9200
  config.vm.network :forwarded_port, guest: 5601, host: 5601
end
