#!/bin/sh # 
 # # Command: wget https://raw.githubusercontent.com/tarekzoka/channel-romeh/main/installer.sh -qO - | /bin/sh # # ########################################### ###########################################  
MY_URL=https://raw.githubusercontent.com/tarekzoka/channel-romeh/main/  
echo "******************************************************************************************************************"
echo "    download and install channel  "
echo "============================================================================================================================="
echo " remove old channel "
# Remove any Channel  # 
rm -rf /etc/enigma2/lamedb 
rm -rf /etc/enigma2/*list 
rm -rf /etc/enigma2/*.tv 
rm -rf /etc/enigma2/*.radio 
rm -rf /etc/tuxbox/*.xml 
#####################################################################################
#!/bin/sh
#

wget -O /tmp/channels_backup_by-romeh.tar "https://raw.githubusercontent.com/tarekzoka/channel-romeh/main/channels_backup_by-romeh.tar.gz"

wait
#!/bin/sh
opkg install /tmp/*.ipk
wait
wait
tar -xzf channels_backup_by-romeh.tar.gz  -C /
sleep 2;


echo "****************************************************************************************************************************"
echo "# Channel  INSTALLED SUCCESSFULLY #"
echo "
echo " "*********************************************************" 
	echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   TAR_EK "   
sleep 4;
	echo '========================================================================================================================='
###########################################                                                                                                                  
echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
killall -9 enigma2
exit 0
