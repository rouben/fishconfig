function lsvdevs --description='Lists ZFS VDEVs'
	if test -d /dev/disk/by-vdev/
		for i in a b c d e f g h i j k l m n o p q r s t u v w x y z
			ls -la /dev/disk/by-vdev/ | grep sd$i
		end | grep -v part | awk "{print \$11,\$10,\$9}" | sed "s/\.\.\///g"
	else
		echo "Doesn't look like ZFS VDEVs are present... bailing!"
		echo
	end
end
