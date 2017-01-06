#!/bin/bash
mkfs -t ext4 /dev/xvdb
mkdir /mnt/var
mount /dev/xvdb /mnt/var
rsync -aqxP /var/* /mnt/var
umount /mnt/var/
mv /var /var.old
mkdir /var
mount /dev/xvdb /var
rm -R /var.old
genfstab -U -p / >> /etc/fstab
