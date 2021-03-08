function ssh --description="SSH alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  ssh=(which ssh) $ssh $0
end

function scp --description="SCP alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  scp=(which scp) $scp $0
end

function sftp --description="SFTP alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  sftp=(which sftp) $sftp $0
end
