function nukegpa --description "Nukes GPG Agent and PSCD to allow for GPG to talk to the YubiKey"
	sudo systemctl stop pcscd.service
	gpg-connect-agent KILLAGENT /bye
	gpg --card-status
end
