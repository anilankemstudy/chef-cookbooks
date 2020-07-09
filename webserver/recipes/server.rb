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


cookbook_file  '/var/www/html/index.html' do
	source 'test.html'
	owner 'root'
    group 'root'
    mode '0755'
    action :create
end

remote_file '/var/www/html/gopal.jg' do
    source 'https://gopalimagebucket.s3.us-east-2.amazonaws.com/happyface.jpg'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end
service 'apache2' do
    action [ :enable, :start ]
end

