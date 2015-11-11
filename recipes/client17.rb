#
# Author:: Taliesin Sisson (<taliesins@yahoo.com>)
# Cookbook Name:: sqlanywhere
# Recipe:: client17
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
include_recipe '7-zip'

::Chef::Recipe.send(:include, Windows::Helper)
filename = File.basename(node['sqlanywhere']['client17']['url']).downcase
fileextension = File.extname(filename)
download_path = "#{Chef::Config['file_cache_path']}/#{filename}"
extract_path = "#{Chef::Config['file_cache_path']}/#{node['sqlanywhere']['client17']['filename']}/#{node['sqlanywhere']['client17']['checksum']}"
winfriendly_extract_path = win_friendly_path(extract_path)

remote_file download_path do
  source node['sqlanywhere']['client17']['url']
  checksum node['sqlanywhere']['client17']['checksum']
end

execute 'extract_sqlanywhereclient' do
  command "#{File.join(node['7-zip']['home'], '7z.exe')} x -y -o\"#{winfriendly_extract_path}\" #{download_path}"
  only_if {!(::File.directory?(download_path)) }
end

windows_package node['sqlanywhere']['client17']['name'] do
  source "#{extract_path}/setup.exe"
  installer_type :custom
  options '/s /v/qn'
end