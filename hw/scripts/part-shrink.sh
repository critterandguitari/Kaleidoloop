echo "------------preparing to re partition, shutting things down"
killall pd
killall app
rmmod g_mass_storage
umount /dev/mmcblk1p2
echo "-----------re partition"
sfdisk --no-reread /dev/mmcblk1 < part-small.dump 
sync
echo "-----------running partprobe"
partprobe
sync
echo "-----------zero ing"
dd if=/dev/zero of=/dev/mmcblk1p2 
rm /etc/app-sdcard-format.lock
sync
#mkfs.vfat -F 12 -n APP /dev/mmcblk1p2
