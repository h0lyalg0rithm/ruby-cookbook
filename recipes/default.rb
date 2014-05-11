#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'apt'
include_recipe 'build-essential'


packages = %w{ wget openssl libreadline-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison libcurl4-openssl-dev }

packages.each do |pk|
  package pk
end

ruby_tar = Chef::Config[:file_cache_path] + "/ruby-#{node['ruby']['version']}.tar.gz"

remote_file ruby_tar do
  source "http://cache.ruby-lang.org/pub/ruby/ruby-#{node['ruby']['version']}.tar.gz"
  mode "0644"
end

execute "untar ruby" do
  cwd Chef::Config[:file_cache_path]
  command 'tar -xzvf ' + ruby_tar
end

execute "configure" do
  cwd Chef::Config[:file_cache_path] + "/ruby-#{node['ruby']['version']}/"
  command './configure'
end

execute "configure" do
  cwd Chef::Config[:file_cache_path] + "/ruby-#{node['ruby']['version']}/"
  command 'sudo make && sudo make install'
end