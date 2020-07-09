#setup.rb

package 'tree' do
    action :install
end

package 'nano' do
    action :install
end

package 'emacs' do
    action :install
end

package 'ntp'
package 'git' do
	action :install
end
file '/etc/motd' do
    content 'This is new motd file'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end




service 'ntp' do
    action [ :enable, :start ]
end

