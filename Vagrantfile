require 'json'
require 'yaml'

VAGRANTFILE_API_VERSION = '2'
conf_dir = File.expand_path('provision/homestead')

provision_dir = File.expand_path('provision')

homestead_yaml_path = File.join(provision_dir, 'Homestead.yaml')
homestead_json_path = File.join(provision_dir, 'Homestead.json')
after_script_path = File.join(provision_dir, 'after.sh')
aliases_path = File.join(provision_dir, 'aliases')

require File.expand_path(conf_dir + '/scripts/homestead.rb')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if File.exist? aliases_path
    config.vm.provision 'file', source: aliases_path, destination: '~/.bash_aliases'
  end

  if File.exist? homestead_yaml_path
    Homestead.configure(config, YAML.load(File.read(homestead_yaml_path)))
  elsif File.exist? homestead_json_path
    Homestead.configure(config, JSON.parse(File.read(homestead_json_path)))
  end

  if File.exist? after_script_path
    config.vm.provision 'shell', path: after_script_path
  end
end
