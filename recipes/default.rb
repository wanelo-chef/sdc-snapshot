#
# Cookbook Name:: sdc-snapshots
# Recipe:: default
#
# Copyright 2013, Wanelo, Inc.
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

include_recipe "sdc::api_client"

template "#{node['sdc']['install_path']}/sdc-snapshot" do
  source "sdc-snapshot.erb"
  mode "0755"
end

template "#{node['sdc']['install_path']}/sdc-listsnapshots" do
  source "sdc-listsnapshots.erb"
  mode "0755"
end

cron "snapshot the machine every 15 minutes and deletes older snapshots" do
  minute "10"
  command "#{node['sdc']['install_path']}/sdc-snapshot 2>&1 >> /var/log/sdc-snapshot.log"
  only_if "ls /root/.ssh/#{node['sdc']['key_name']}"
end
