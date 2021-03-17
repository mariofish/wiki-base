# Arch Linux Guide

## Installation

- ISO Image [How to Create Bootable Arch Linux on USB Drive](https://linoxide.com/linux-how-to/create-bootable-arch-linux-usb-drive/)
- [How to Install Arch Linux in 2019 Step by Step Guide](https://itsfoss.com/install-arch-linux/)
- [https://medium.com/@mudrii/arch-linux-installation-on-hw-with-i3-windows-manager-part-1-5ef9751a0be](https://medium.com/@mudrii/arch-linux-installation-on-hw-with-i3-windows-manager-part-1-5ef9751a0be)
- [https://www.itzgeek.com/how-tos/linux/arch-linux/how-to-install-arch-linux-latest-version-step-by-step-guide.html](https://www.itzgeek.com/how-tos/linux/arch-linux/how-to-install-arch-linux-latest-version-step-by-step-guide.html)

## Bootloader

- [https://wiki.archlinux.org/index.php/Microcode](https://wiki.archlinux.org/index.php/Microcode)
- [https://wiki.archlinux.org/index.php/Persistent_block_device_naming\#by-partuuid](https://wiki.archlinux.org/index.php/Persistent_block_device_naming#by-partuuid)
- [https://www.reddit.com/r/archlinux/comments/a81kz6/need_help_installing_refind_bootloader/](https://www.reddit.com/r/archlinux/comments/a81kz6/need_help_installing_refind_bootloader/)
- [https://bbs.archlinux.org/viewtopic.php?id=152832](https://bbs.archlinux.org/viewtopic.php?id=152832)

## Rice

- [GitHub - EliverLara/Juno: GTK themes inspired by epic vscode themes](https://github.com/EliverLara/Juno)

## FAQ

### Wi-Fi

[https://ricostacruz.com/til/arch-linux-wifi-using-netctl](https://ricostacruz.com/til/arch-linux-wifi-using-netctl)

```shell
sudo netctl start wlp3s0-Yeyeko\&Crisp_5G
sudo systemctl enable netctl-auto@wlp3s0.service
```

### Sound

```shell
aplay -l
speaker-test -c1
vim ~/.asoundrc
```

### Change HDD

```shell
# mount && swapon
mount /dev/sda3 /mnt # replace with nvmen1p3 and etc.
swapon /dev/sda2

# delete old fstab files
echo "" > /mnt/etc/fstab

# genfstab again
genfstab -U /mnt >> /mnt/etc/fstab
```
