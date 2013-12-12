cron "snapshot the machine every 15 minutes and deletes older snapshots" do
  minute "10"
  command "#{node['sdc']['install_path']}/sdc-snapshot 2>&1 >> /var/log/sdc-snapshot.log"
  only_if "ls /root/.ssh/#{node['sdc']['key_name']}"
end
