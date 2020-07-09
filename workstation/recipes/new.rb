#
# Cookbook:: workstation
# Recipe:: new
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#motd file

file '/etc/motd' do
    content  "This is test server
    Hostname: #{node['hostname']}
    Ip Address: #{node['ipaddress']}
    "
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

