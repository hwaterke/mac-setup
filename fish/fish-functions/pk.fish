function pk
	pbcopy < ~/.ssh/id_rsa.pub
	echo "Public key copied to your clipboard"
	cat ~/.ssh/id_rsa.pub
end
