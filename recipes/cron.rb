cron "snapshot the machine and deletes older snapshots" do
  minute node['sdc']['snapshot']['cron']['minute']
  command "RETENTION_COUNT=#{node['sdc']['snapshot']['retention_count']} MIN_FREE_GB=#{node['sdc']['snapshot']['min_free_gb']} #{node['sdc']['install_path']}/sdc-snapshot 2>&1 >> /var/log/sdc-snapshot.log"
  only_if "ls /root/.ssh/#{node['sdc']['key_name']}"
end

# Deprecated crontab entry with hard-coded number
cron "snapshot the machine every 15 minutes and deletes older snapshots" do
  action :delete
end

