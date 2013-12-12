sdc-snapshot
=============

Installs cli tools and scheduler for automated snapshots via Joyent's SDC API.

For the tool to work, you must install an SSH keypair that you have uploaded through
Joyent's public cloud portal into `/root/.ssh/sdc-snapshot.pub`

Example:

```bash
RETENTION_COUNT=5 MIN_FREE_GB=750 /opt/local/bin/sdc-snapshot
```

