# mod-network-interfaces

Make modifcations of /usr/network/interfaces a bit easy
WARNING: This is dangerous if you don't know what you are doing!

Example use: 

*# download*

**curl -L -o MNI.rb http://bit.ly/2snhYAx**

*# make executable*

**chmod u+x MNI.rb**

*# To list all options*

**./MNI.rb**

*# example select an option*

**./MNI.rb -0**

*# example: to write to /etc/network/interfaces. MUST BE ROOT!*

**./MNI.rb -0 > /etc/network/interfaces**
