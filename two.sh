export TERM=xterm-color
mount -a
dpkg-reconfigure tzdata
apt update
apt -y install locales
dpkg-reconfigure locales
apt -y install linux-image-amd64 firmware-linux-nonfree firmware-iwlwifi ncdu
apt -y install mtools dosfstools grub-efi-amd64
grub-install --efi-directory=/boot/EFI
apt -y install ssh vim tmux refind network-manager git ufw htop
passwd
adduser user
tasksel install standard
apt clean
tasksel
mkdir /data
cd /data
wget https://github.com/dogecoin/dogecoin/releases/download/v1.14.7/dogecoin-1.14.7-x86_64-linux-gnu.tar.gz
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw logging off
ufw enable
systemctl enable ufw
apt -y install fail2ban
echo "session required                        pam_limits.so" >> /etc/pam.d/common-session
echo "session required                        pam_limits.so" >> /etc/pam.d/common-session-noninteractive
apt -y install apt-transport-https
echo "deb     [arch=arm64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org bookworm main
deb-src [arch=arm64 signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org bookworm main" > /etc/apt/sources.list.d/tor.list
