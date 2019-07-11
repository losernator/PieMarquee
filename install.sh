sudo cp ./libraspidmx.so.1 /usr/lib
sudo cp ./pngview /usr/bin
sudo chmod 755 /usr/bin/pngview
sudo chmod 755 ./pngview
sudo chmod 755 ./pngviewbg

sudo apt-get install imagemagick -y

sudo sed -i '/PieMarquee.py/d' /opt/retropie/configs/all/autostart.sh
sudo sed -i '1i\\/usr/bin/python /home/pi/PieMarquee/PieMarquee.py &' /opt/retropie/configs/all/autostart.sh

echo
echo "Setup Completed. Reboot after 3 Seconds."
sleep 3
reboot
