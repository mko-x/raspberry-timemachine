# Raspberry Timemachine
Easily setup a Raspberry Pi to act as TimeMachine aka. TimeCapsule

# Prerequesites 
You need to have an USB device plugged in to the system. If not script will exit.

# Usage
```bash
wget https://raw.githubusercontent.com/mko-x/raspberry-timemachine/master/setup.sh && ./setup.sh
```

# Mac Setup
**Important**: You need to allow unsupported devices.
`defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1`
Find your new TimeMachine in System Settings > TimeMachine > Select disk...