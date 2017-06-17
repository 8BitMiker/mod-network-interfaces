# mod-network-interfaces

Make modifcations of /usr/network/interfaces a bit easy

Example use: 

*# download*

**curl -L -o MNI.rb http://bit.ly/2snhYAx**

*# make executable*

**chmod u+x MNI.rb**

*# To list all options*

**./MNI.rb**

*# example select an option*

**./MSNI.rb -0**

*# example: to write to /etc/network/interfaces*

**sudo ./MSNI.rb -0 > /etc/network/interfaces**
