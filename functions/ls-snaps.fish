function ls-snaps --description='List old snaps'
echo Snapname\tRevision
snap list --all | awk '/disabled/{print $1, $3}' | while read snapname revision
    echo "$snapname"\t"$revision"
  end
end
