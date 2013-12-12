default['sdc']['account_name'] = "wanelo"
default['sdc']['key_name'] = "sdc-snapshot"
default['sdc']['api_endpoint'] = "https://api.joyentcloud.com"
default['sdc']['install_path'] = "/opt/local/bin"

default['sdc']['snapshot']['retention_count'] = 10
default['sdc']['snapshot']['min_free_gb'] = 750

# Override this in an environment, role or with set_unless
default['sdc']['snapshot']['cron']['minute'] = 0
