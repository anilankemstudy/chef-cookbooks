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


file '/var/www/html/index.html' do
    content '<h1>Welcome to my web server<h1>'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end


service 'apache2' do
    action [ :enable, :start ]
end
