# Raspberry Timemachine
Easily setup a Raspberry Pi to act as TimeMachine aka. TimeCapsule

# Prerequesites 
You need to have an USB device plugged in to the system. If not script will exit.

# Usage
```bash
wget https://raw.githubusercontent.com/mko-x/raspberry-timemachine/master/setup.sh && ./setup.sh
```

# Usage WITH limited time machine volume size
Allow enable limit time machine's volume size via environment variable TM_VOLUME_LIMIT_ENABLED
CAVEAT: You MUST provide a size with environment variable TM_VOLUME_LIMIT_SIZE_MB

e.g. limit of 100GB = 1024 * 100 MB = 102400
```bash
wget https://raw.githubusercontent.com/mko-x/raspberry-timemachine/master/setup.sh && \
     TM_VOLUME_LIMIT_ENABLED=1 \
     TM_VOLUME_LIMIT_SIZE_MB=102400 ./setup.sh
```

# Mac Setup
**Important**: You need to allow unsupported devices.
`defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1`
Find your new TimeMachine in System Settings > TimeMachine > Select disk...
