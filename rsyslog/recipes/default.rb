#
# Cookbook Name:: rsyslog
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# file '/etc/rsyslog.d/al_log_agt.conf' do
#   mode '0755'
#   owner 'root'
#   group 'root'
#   content IO.read('/etc/rsyslog.d/al_log_agt.conf')
#   action :create
#   notifies :run, 'service[rsyslog]', :immediately
# end
# service "rsyslog" do
#   action [ :enable, :start ] 
# end


template "/etc/rsyslog.d/al_log_agt.conf" do 
	owner  'root'    
	group  'root'    
	mode  '0644' 
	source "al_log_agt.erb"    
	notifies :run, 'service[rsyslog]', :delayed 
end
service "rsyslog" do  
	supports :status => true, :restart => true, :reload => true
    action [ :enable, :start ]
end