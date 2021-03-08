function ssh --description="SSH alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  (which ssh) $0
end

function scp --description="SCP alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  (which scp) $0
end

function sftp --description="SFTP alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  (which scp) $0
end
