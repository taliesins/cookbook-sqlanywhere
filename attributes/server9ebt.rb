#
# Author:: Taliesin Sisson (<taliesins@yahoo.com>)
# Cookbook Name:: sqlanywhere
# Attributes:: server9ebt
# Copyright 2014-2015, Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


default['sqlanywhere']['server9ebt']['name'] = 'Sql Anywhere 9 Ebt'
default['sqlanywhere']['server9ebt']['filename'] = 'SA9_Full_WIN32.902_EBF_3951'
default['sqlanywhere']['server9ebt']['filenameextension'] = 'exe'
default['sqlanywhere']['server9ebt']['url'] = 'http://www.yourserver.com/' + default['sqlanywhere']['server9ebt']['filename'] + '.' + default['sqlanywhere']['server9ebt']['filename'] 
default['sqlanywhere']['server9ebt']['checksum'] = 'c605d2a25e35c06bb74749837d82c1bcd9bda2e436499b4caff8c508ba4bb3a4'