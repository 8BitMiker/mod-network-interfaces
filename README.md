# mod-network-interfaces

Make modifcations of /usr/network/interfaces a bit easy

**WARNING:** This is dangerous if you don't know what you are doing!

EXAMPLE USE: 

*# download*

**curl -L -o MNI.rb http://bit.ly/2snhYAx**

*# make executable*

**chmod u+x MNI.rb**

*# To list all options*

**./MNI.rb config.txt**

*# example select an option*

**./MNI.rb -0 config.txt**

*# example: to write to /etc/network/interfaces. MUST BE ROOT!*

**./MNI.rb -0 config.txt > /etc/network/interfaces**

CONFIG EXAMPLE: (Long Dilimeter is necessary #--)

```
# General DHCP
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface

iface lo inet loopback

# The primary network interface

auto ens160
iface ens160 inet dhcp

#----------------------------------------------------------------------
# Static Live Server
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface

iface lo inet loopback

# The primary network interface

auto ens160

iface ens160 inet static
        address xxx.xxx.xxx.xxx
        netmask xxx.xxx.xxx.xxx
        gateway xxx.xxx.xxx.xxx
```
