sh -c /usr/sbin/sshd &
useradd -m $USER
chown -R $USER:$USER /home/$USER/
HOME=/home/$USER

echo "rm -f /entrypoint.sh" >> run.sh
echo "tail -f /dev/null" >> run.sh
chmod +x run.sh
sh run.sh

