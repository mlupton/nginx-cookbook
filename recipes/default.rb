#
# Cookbook Name:: nginx-cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "yum"
include_recipe "yum-epel"

package 'nginx' do
   action :install
end

service 'nginx' do
   action [ :enable, :start ]
end

cookbook_file "/usr/share/nginx/html/index.html" do
   source "index.html"
   mode "0644"
end
