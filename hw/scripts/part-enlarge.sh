echo "-------------stopping things..."
killall pd
rmmod g_mass_storage
umount /dev/mmcblk1p2

echo "-------------resize partition 2 to max..."
echo ", +" | sfdisk --no-reread -N 2 /dev/mmcblk1
sync
partprobe
sync

echo "-------------make new fs..."
mkfs.vfat -F 32 -n KALEIDOLOOP /dev/mmcblk1p2

echo "-------------adding pd patch..."
mount /dev/mmcblk1p2 /sdcard
cp -r /home/root/app/pd /sdcard/
mkdir -p /sdcard/recordings

touch /etc/app-sdcard-format.lock
sync
