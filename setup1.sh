#!/bin/bash
# Install services
wget -q https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/slip/slipstream-rust-deploy.sh
dos2unix slipstream-rust-deploy.sh
bash slipstream-rust-deploy.sh

# Additional commands
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/swap.sh)
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/ssh/member.sh)
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/ssh/usernew.sh)
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/ssh/add-host.sh)
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/ssh/hapus.sh)
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/menu/menu.sh)
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/menu/m-sshovpn.sh)
# Cleanup and reboot
rm -f /root/setup.sh /root/ins-xray.sh /root/insshws.sh cf ssh-vpn.sh ins-xray.sh insshws.sh
echo "Auto reboot in 10 seconds..."
sleep 10

# Reboot
reboot
