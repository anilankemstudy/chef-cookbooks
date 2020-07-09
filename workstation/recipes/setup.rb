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




service 'ntp' do
    action [ :enable, :start ]
end

