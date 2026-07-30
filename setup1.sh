#!/bin/bash
# install service
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/xx)
curl -sSL https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/slip/slipstream-rust-deploy.sh -o /tmp/slipstream-rust-deploy.sh && sudo mv /tmp/slipstream-rust-deploy.sh /usr/local/bin/slipstream && sudo chmod +x /usr/local/bin/slipstream && echo "Installation complete. Type 'slipstream' to open the SSH + slipstream menu."
# Additional commands
bash <(curl -Ls https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/swap.sh)
curl -sSL https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/ssh/usernew.sh -o /tmp/usernew.sh && sudo mv /tmp/usernew.sh /usr/local/bin/user && sudo chmod +x /usr/local/bin/user && echo "Installation complete. Type 'user' to open the SSH + user menu."
curl -sSL https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/ssh/hapus.sh -o /tmp/hapus.sh && sudo mv /tmp/hapus.sh /usr/local/bin/delete && sudo chmod +x /usr/local/bin/delete && echo "Installation complete. Type 'delete' to open the SSH + delete menu."
curl -sSL https://raw.githubusercontent.com/noelrubio143/lite/refs/heads/main/ssh/hapus.sh -o /tmp/member.sh && sudo mv /tmp/member.sh /usr/local/bin/list && sudo chmod +x /usr/local/bin/list && echo "Installation complete. Type 'list' to open the SSH + list menu."
# Cleanup and reboot
rm -f /root/setup.sh /root/ins-xray.sh /root/insshws.sh cf ssh-vpn.sh ins-xray.sh insshws.sh
echo "Auto reboot in 10 seconds..."
sleep 10

# Reboot
reboot
