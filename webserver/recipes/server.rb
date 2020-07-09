#
# Cookbook:: webserver
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
#
#Webserver


package 'apache2' do
    action :install
end


template '/var/www/html/index.html' do
	source 'index.html.erb'
	owner 'root'
    group 'root'
    mode '0755'
    action :create
end


service 'apache2' do
    action [ :enable, :start ]
end

