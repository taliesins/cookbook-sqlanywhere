#
# Author:: Taliesin Sisson (<taliesins@yahoo.com>)
# Cookbook Name:: sqlanywhereclient
# Attributes:: client17
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


default['sqlanywhere']['client17']['name'] = 'Sql Anywhere 17'
default['sqlanywhere']['client17']['filename'] = 'SQLA17_Windows_Client'
default['sqlanywhere']['client17']['filenameextension'] = 'exe'
default['sqlanywhere']['client17']['url'] = 'http://d5d4ifzqzkhwt.cloudfront.net/sqla17client/' + default['sqlanywhere']['client17']['filename'] + '.' + default['sqlanywhere']['client17']['filename'] 
default['sqlanywhere']['client17']['checksum'] = '310b9f281109a00c6965f266eb5ec15020cf73d128ed75587e81bb0204fd2620'