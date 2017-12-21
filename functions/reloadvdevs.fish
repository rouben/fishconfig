function reloadvdevs --description 'Reloads /etc/zfs/vdev_id.conf and regenerates vdev symlinks under /dev/disk/by-vdev'
	sudo udevadm control --reload-rules
	sudo udevadm trigger
	if [ $status = 0 ]
		echo Great success\!\!\!
	end
end
