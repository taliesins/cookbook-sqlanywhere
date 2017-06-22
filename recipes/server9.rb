#
# Author:: Taliesin Sisson (<taliesins@yahoo.com>)
# Cookbook Name:: sqlanywhere
# Recipe:: server9
#
# Copyright 2013-2015, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe 'seven_zip'

::Chef::Recipe.send(:include, Windows::Helper)
filename = File.basename(node['sqlanywhere']['server9']['url']).downcase
fileextension = File.extname(filename)
download_path = "#{Chef::Config['file_cache_path']}/#{filename}"
extract_path = "#{Chef::Config['file_cache_path']}/#{node['sqlanywhere']['server9']['filename']}/#{node['sqlanywhere']['server9']['checksum']}"
winfriendly_extract_path = win_friendly_path(extract_path)
config_file_path = "#{extract_path}/setup.iss"

remote_file download_path do
  source node['sqlanywhere']['server9']['url']
  checksum node['sqlanywhere']['server9']['checksum']
end

execute 'extract_sqlanywhereclient' do
  command "\"#{File.join(node['seven_zip']['home'], '7z.exe')}\" x -y -o\"#{winfriendly_extract_path}\" #{download_path}"
  only_if {!(::File.directory?(download_path)) }
end

template config_file_path do
  source 'server9.iss.erb'
end

windows_package node['sqlanywhere']['server9']['name'] do
  source "#{extract_path}/setup.exe"
  installer_type :custom
  options '/s'
end