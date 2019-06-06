if ! pgrep -x "gpg-agent" > /dev/null
	gpg-agent --daemon 
	set -x GPG_TTY (tty)  
end
