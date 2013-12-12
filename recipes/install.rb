include_recipe "sdc::api_client"

template "#{node['sdc']['install_path']}/sdc-snapshot" do
  source "sdc-snapshot.erb"
  mode "0755"
end

template "#{node['sdc']['install_path']}/sdc-listsnapshots" do
  source "sdc-listsnapshots.erb"
  mode "0755"
end
