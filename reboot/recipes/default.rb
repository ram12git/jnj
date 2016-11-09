#
# Cookbook Name:: reboot
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#execute "needs_reboot" do
#  command "/usr/bin/tput smso;/bin/echo 'This system needs to be REBOOTED';/usr/bin/tput rmso;sudo init 6" 
#end

#reboot 'needs_reboot' do
#  action :request_reboot
#  reason 'This system needs to be REBOOTED'
#  command '/usr/bin/tput smso; /bin/echo 'This system needs to be REBOOTED'; /usr/bin/tput rmso'  
#  delay_mins 1
#end

#execute 'now' do
  #action :request_reboot
  #reason 'Cannot continue Chef run without a reboot.'
  #delay_mins 2
#end
execute "sudo init 6" do
  command '/usr/bin/tput smso&&/bin/echo "This system needs to be REBOOTED"&&/usr/bin/tput rmso'
end