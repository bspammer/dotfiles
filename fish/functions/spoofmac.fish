# Defined in - @ line 1
function spoofmac --description 'Generates a random MAC address and sets it on the en0 interface.'
	sudo ifconfig en0 ether (openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'); ifconfig en0 | grep ether
end
