#iwctl
#station wlan0 scan
#station wlan0 get-networks
#station wlan0 connect "Sai Chaitanya 5Ghz"
timedatectl set-ntp true
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda3
mkswap /dev/sda2
swapon /dev/sda2
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot/
pacstrap /mnt base linux linux-firmware nano grub efibootmgr vim networkmanager git network-manager-applet wireless_tools wpa_supplicant dialog os-prober mtools dosfstools base-devel linux-headers reflector
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
