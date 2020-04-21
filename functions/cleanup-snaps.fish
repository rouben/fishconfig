function cleanup-snaps --description='Clean up old snaps'
snap list --all | awk '/disabled/{print $1, $3}' | while read snapname revision
    sudo snap remove "$snapname" --revision="$revision"
  end
end
