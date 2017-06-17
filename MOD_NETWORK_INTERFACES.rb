#!/usr/bin/ruby

# by Mike Limberger
# Make modifcations of /usr/network/interfaces a bit easy?

class Mod_Interfaces

	def initialize(del='#'+'-'*70) 
	
		@delimiter = del
		@decision = nil
		@opts = []
		
		# Loads all interface mods from __END__
		DATA.each(@delimiter) do |line|

			line.gsub!(%r{#{@delimiter}},'')
			@opts.push(line)
			
		end
	
	end
	
	# Runs all program logic
	def go
	
		# Get option From Argumnets 
		# If you put more then one just does last
		ARGV.delete_if do |arg|

			if arg.match(%r~-([0-9])~)
			
				@decision = $1
			
			end
			

		end
	
		# Check if argument was defined (if not then give options).
		unless @decision

			puts "Need Valid Argument -1 or -2 etc...\n"
			
			@opts.each_index do |k| 
				
				@opts[k] =~ /^(\#[^\n]+)\n/; 
				printf %Q{-%01d %s\n}, k, $1
			
			end
			
			abort

		end
		
		# Make mods
		if @decision =~ /^(\d)$/
		
			puts @opts[$1.to_i]
		
		end
	
	end

end

# init
mod = Mod_Interfaces.new

# run
mod.go

__END__
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
	address 142.150.112.63
	netmask 255.255.252.0
	gateway 142.150.112.1
