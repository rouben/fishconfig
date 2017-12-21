function lsids --description 'List hard disk device IDs'
ls -la /dev/disk/by-id/ | grep -v part | grep -v mmc | sed "s/\.\.\///g" | grep lrwx | awk "{print \$11,\$10,\$9 }"
end
