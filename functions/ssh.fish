function ssh --description="SSH alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  set ssh (which ssh)
  command $ssh $argv
end

function scp --description="SCP alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  set scp (which scp)
  command $scp $argv
end

function sftp --description="SFTP alias to nuke GPG SSH key agent"
  echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent
  set sftp (which sftp)
  command $sftp $argv
end
