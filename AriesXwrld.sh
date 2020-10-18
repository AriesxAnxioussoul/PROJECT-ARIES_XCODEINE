#!/bin/bash
clear
cd $HOME
rm -rf PROJECT-ARIES_XCODEINE &> /dev/null
git clone https://github.com/AriesxAnxioussoul/PROJECT-ARIES_XCODEINE &> /dev/null
mv $(echo "$basename "$0"") $HOME/PROJECT-ARIES_XCODEINE &> /dev/null
play $HOME/PROJECT-ARIES_XCODEINE/Welcome.mp3 &> /dev/null
dialog --keep-tite --title "INFORMATION" --msgbox 'THIS PROJECT IS BETA STILL UNDER TESTING KINDLY IF ANYONE FIND ANY BUG REPORT TO @Anxioussoul AND KINDLY DONT LEAK THIS PROJECT' 20 30 | pv -qL 500
echo
toilet "WELCOME TO PROJECT ARIEA XCODEINE " -f term -F border --gay | pv -qL 80
sleep 1
echo "𝐈𝐍𝐈𝐓𝐈𝐀𝐋𝐈𝐙𝐈𝐍𝐆 𝐓𝐇𝐄 𝐏𝐑𝐎𝐉𝐄𝐂𝐓" | lolcat
play $HOME/PROJECT-ARIES_XCODEINE/In.mp3 &> /dev/null
sleep 1
echo
for i in $(seq 1 100)
do
sleep 0.01
echo $i
done | whiptail --title 'PROJECT ARIES XCODEINE' --gauge 'LOADING RESOURCES...' 6 60 0| pv -qL 500
echo
clear
###############
echo -e " Access Granted Welcome To The Program " | lolcat | pv -qL 170
echo -ne " ╭━━┳━┳━━┳━┳━━╮╭╮╭┳━┳━┳━━┳━┳━━┳━┳┳━╮" | lolcat | pv -qL 6000000
sleep 0.5
echo -ne " ┃╭╮┃╋┣┃┃┫┳┫━━┫╰╮╭┫╭┫┃┣╮╮┃┳┻┃┃┫┃┃┃┳╯" | lolcat | pv -qL 6000000
sleep 0.7
echo -ne " ┃┣┫┃╮╋┃┃┫┻╋━━┃╭╯╰┫╰┫┃┣┻╯┃┻┳┃┃┫┃┃┃┻╮" | lolcat | pv -qL 6000000
sleep 0.5
echo -ne " ╰╯╰┻┻┻━━┻━┻━━╯╰╯╰┻━┻━┻━━┻━┻━━┻┻━┻━╯" | lolcat | pv -qL 6000000
sleep 1
screenfetch | lolcat 
termux-wake-lock
play $HOME/PROJECT-ARIES_XCODEINE/Sudo.mp3 &> /dev/null

#CHECKING IF THE SCRIPT IS RUNNING UNDER SUDO 
echo "CHECKING ROOT ACCESS :"|lolcat| pv -qL 80
if ((${EUID:-0} || "$(id -u)")); then
echo "ROOT ACCESS FAILED ! PLEASE RUN THE SCRIPT UNDER SUDO MODE"|lolcat| pv -qL 80
echo
exit
else
echo "ROOT ACCESS VALIDIFIED"|lolcat| pv -qL 80
fi
echo
echo "PLEASE ACCEPT TO THE TERMS AND CONDITIONS IN THE NEXT PROMPT " |lolcat| pv -qL 80
echo""
dialog --keep-tite --title "WARNING !" --msgbox 'THIS SCRIPT IS RUNNING UNDER SUDO MODE.WE DONT TAKE LIABILITY TO ANY DAMAGE MADE TO YOUR DEVICE BY THIS SCRIPT ! IF U UNDERSTAND THE RISKS AND STILL WANT TO PROCEED CLICK OK ELSE EXIT THE SCRIPT WITH CTRL+Z' 20 30 | pv -qL 500
dialog --keep-tite --title "INSTRUCTIONS" --msgbox 'WAIT TILL THE SCRIPT EXECUTES AND STARTS THE GAME.PLAY THE GAME AS LONG AS U WISH.WHEN YOU HAVE FINISHED PLAYING THEN RETURN TO TErm -rfINAL AND PRESS CTRL+C.IT WILL BEGIN TO RESTORE THE CHANGES' 20 30 | pv -qL 500
echo

#CREATING DIRECTORIES
play $HOME/PROJECT-ARIES_XCODEINE/Directory.mp3 &> /dev/null
if test -d $HOME/ARIES_XCODEIN; then
echo "DIRECTORIES EXISTS REDIRECTED TO MAIN SCRIPT "|lolcat| pv -qL 80
else
echo "CREATING DIRECTORIES" |lolcat| pv -qL 80
mkdir /sdcard/ARIES_XCODEINE &> /dev/null
mkdir /sdcard/ARIES_XCODEINE/ORIGINAL &> /dev/null
mkdir /sdcard/ARIES_XCODEINE/MOD &> /dev/null
mkdir /sdcard/ARIES_XCODEINE/BACKUP &> /dev/null
mkdir /sdcard/ARIES_XCODEINE/BACKUP1 &> /dev/null
mkdir /storage/emulated/0/ARIES_XCODEINE/BACKUP &> /dev/null
fi
echo
play $HOME/PROJECT-ARIES XCODEINE/options.mp3 &> /dev/null
echo "PLEASE SELECT YOUR GAME FROM THE PROMPT WINDOW "|lolcat| pv -qL 80
echo
# "CHOOSE YOUR GAME" WINDOW
play $HOME/PROJECT-ARIES_XCODEINE/Choose.mp3 &> /dev/null
cmd=(dialog --keep-tite --menu "PLEASE SELECT YOUR GAME :" 15 40 4)
options=(1 "PUBG MOBILE GLOBAL"
2 "PUBG MOBILE KOREAN"
3 "PUBG MOBILE TAIWAN"
4 "PUBG MOBILE VIETNAM"
5 "MAKER BYPASS"
6 "PID SPOOFING"
7 "EXIT")
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
for choice in $choices
do
case $choice in
# FUNCTIONS TO DO UNDER 1,2,3,4,
1)
echo "OPENING THE GAME NOW, PLEASE MINIMISE IT AT PUBG LOGO[BLACK SCREEN] AND RETURN TO TERMUX"|lolcat| pv -qL 80
echo
am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity &> /dev/null
sleep 40
am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null
echo "MAKING BACKUP OF ORIGINAL LIBS"|lolcat| pv -qL 80
echo
cp -r /data/data/com.tencent.ig/lib /sdcard/ARIES_XCODEINE/BACKUP1
cp -r /data/data/com.tencent.ig/lib /storage/emulated/0/ARIES_XCODEINE/BACKUP
echo "GENERATING NEW LIB FILES"|lolcat| pv -qL 80
echo "THIS MAY TAKE UPTO 2-3 MINUTES"|lolcat| pv -qL 80
echo
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzlib.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzip.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libUE4.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtprt.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtersafe.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/liblbs.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libigshare.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libgcloud.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libBugly.so bs=87678 count=100 &>/dev/null
echo "MOVING UP MODDED LIBS"|lolcat| pv -qL 80
echo
mv /sdcard/ARIES_XCODEINE/MOD/libUE4.so /data/data/com.tencent.ig/lib
mv /sdcard/ARIES_XCODEINE/MOD/libBugly.so /data/data/com.tencent.ig/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtersafe.so /data/data/com.tencent.ig/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtprt.so /data/data/com.tencent.ig/lib
mv /sdcard/ARIES_XCODEINE/MOD/libxguardian.so /data/data/com.tencent.ig/lib
mv /sdcard/ARIES_XCODEINE/MOD/libgcloud.so /data/data/com.tencent.ig/lib
echo "BYPASSING LIBRARY-CHANGED DETECTION"|lolcat| pv -qL 80
chmod -R 660 /data/data/com.tencent.ig/lib/libhelpshiftlistener.so
chmod -R 660 /data/data/com.tencent.ig/lib/libUE4.so
chmod -R 660 /data/data/com.tencent.ig/lib/libzip.so
chmod -R 660 /data/data/com.tencent.ig/lib/libzlib.so
chmod -R 660 /data/data/com.tencent.ig/lib/libtpnsSecurity.so
chmod -R 660 /data/data/com.tencent.ig/lib/libzlib.so
chmod -R 660 /data/data/com.tencent.ig/lib/libIMSDK.so
chmod -R 660 /data/data/com.tencent.ig/lib/libTDataMaster.so
chmod -R 660 /data/data/com.tencent.ig/lib/libtersafe.so
chmod -R 660 /data/data/com.tencent.ig/lib/libtprt.so
chmod -R 660 /data/data/com.tencent.ig/lib/libxguardian.so
chmod -R 660 /data/data/com.tencent.ig/lib/libgcloud.so
#EXTRA_PERMISSION
chmod -R 660 /data/data/com.tencent.ig/databases/__hs__db_issues
chmod -R 660 /data/data/com.tencent.ig/databases/__hs__db_key_values
chmod -R 660 /data/data/com.tencent.ig/databases/__hs__db_properties
chmod -R 660 /data/data/com.tencent.ig/databases/__hs_db_helpshift_users
chmod -R 660 /data/data/com.tencent.ig/databases/beacon_db
chmod -R 660 /data/data/com.tencent.ig/databases/bugly_db_
chmod -R 660 /data/data/com.tencent.ig/databases/config.db
chmod -R 660 /data/data/com.tencent.ig/databases/iMSDK.db
#REMOVING_FILES
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.14.5.11180_20190911132401_336715309_cures.ifs.res
timeout 5 cmatrix
echo
echo "STARTING THE MINIMISED GAME"|lolcat| pv -qL 80
echo
am start -n com.tencent.ig/com.epicgames.ue4.SplashActivity &> /dev/null
echo "STARTING THE LOG CLEANER SERVICE & CLEANING PAST GAME RECORDS"|lolcat| pv -qL 80
echo
#RESTORE DATA
sleep 30
trap ctrl-c INT
function ctrl-c() {
echo "KEYBOARDINTERRUPTION DETECTED ! RESTORING EVERYTHING NOW "|lolcat| pv -qL 80
rm -rf /data/data/com.tencent.ig/lib
mv /sdcard/ARIES_XCODEINE/BACKUP1/lib /data/data/com.tencent.ig/lib
su -c iptables --flush
iptables -P INPUT ACCEPT &>/dev/null
iptables -P OUTPUT ACCEPT &>/dev/null
iptables -P FORWARD ACCEPT &>/dev/null
iptables -F &>/dev/null
iptables -t nat -F &>/dev/null
ip6tables -F &>/dev/null
chmod -R 755 /data/data/com.tencent.ig/lib/libtersafe.so
chmod -R 755 /data/data/com.tencent.ig/lib/libtprt.so
chmod -R 755 /data/data/com.tencent.ig/lib/libUE4.so
chmod -R 755 /data/data/com.tencent.ig/lib/libxguardian.so
chmod -R 755 /data/data/com.tencent.ig/lib/libBugly.so
chmod -R 755 /data/data/com.tencent.ig/lib/libgcloud.so
#RestoreDATA
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
echo
echo "THANKS FOR CHOOSING PROJECT-ARIEA XCODEINE"|lolcat| pv -qL 80
echo
play $HOME/PROJECT-ARIEA XCODEINE/goodbye.mp3 &> /dev/null
toilet "THANKS FOR CHOOSING US" -f term -F border --gay | pv -qL 80
echo
sleep 1
echo "FEEL FREE TO SHARE YOUR EXPERIENCE"|lolcat| pv -qL 200
echo
exit
}
while true; do #(nested-loop)
c=1
while [[ $c -le 10 ]]
do
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/cache &>/dev/null
rm -rf /data/data/com.pubg.krmobile/cache &>/dev/null
rm -rf /data/data/com.pubg.krmobile/code_cache &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache &>/dev/null
rm -rf /data/data/com.tencent.ig/cache &>/dev/null
rm -rf /data/data/com.tencent.ig/code_cache &>/dev/null
echo "LOGS CLEANED SUCCESSFULLY !" |lolcat
done
done
;;
2)
echo "OPENING THE GAME NOW, PLEASE MINIMISE IT AT PUBG LOGO[BLACK SCREEN] AND RETURN TO TERMUX"|lolcat| pv -qL 80
echo
am start -n com.pubg.krmobile/com.epicgames.ue4.SplashActivity &> /dev/null
sleep 40
am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null
echo "MAKING BACKUP OF ORIGINAL LIBS"|lolcat| pv -qL 80
echo
cp -r /data/data/com.pubg.krmobile/lib /sdcard/ARIES_XCODEINE/BACKUP1
cp -r /data/data/com.pubg.krmobile/lib /storage/emulated/0/ARIES_XCODEINE/BACKUP
echo "GENERATING NEW LIB FILES"|lolcat| pv -qL 80
echo "THIS MAY TAKE UPTO 2-3 MINUTES"|lolcat| pv -qL 80
echo
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzlib.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzip.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libUE4.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtprt.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtersafe.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/liblbs.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libigshare.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libgcloud.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libBugly.so bs=87678 count=100 &>/dev/null
echo "MOVING UP MODDED LIBS"|lolcat| pv -qL 80
echo
mv /sdcard/ARIES_XCODEINE/MOD/libUE4.so /data/data/com.pubg.krmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libBugly.so /data/data/com.pubg.krmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtersafe.so /data/data/com.pubg.krmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtprt.so /data/data/com.pubg.krmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libxguardian.so /data/data/com.pubg.krmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libgcloud.so /data/data/com.pubg.krmobile/lib
echo "BYPASSING LIBRARY-CHANGED DETECTION"|lolcat| pv -qL 80
chmod -R 660 /data/data/com.pubg.krmobile/lib/libhelpshiftlistener.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libUE4.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libzip.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libzlib.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libtpnsSecurity.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libzlib.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libIMSDK.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libTDataMaster.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libtersafe.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libtprt.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libxguardian.so
chmod -R 660 /data/data/com.pubg.krmobile/lib/libgcloud.so
#EXTRA_PERMISSION
chmod -R 660 /data/data/com.pubg.krmobile/databases/__hs__db_issues
chmod -R 660 /data/data/com.pubg.krmobile/databases/__hs__db_key_values
chmod -R 660 /data/data/com.pubg.krmobile/databases/__hs__db_properties
chmod -R 660 /data/data/com.pubg.krmobile/databases/__hs_db_helpshift_users
chmod -R 660 /data/data/com.pubg.krmobile/databases/beacon_db
chmod -R 660 /data/data/com.pubg.krmobile/databases/bugly_db_
chmod -R 660 /data/data/com.pubg.krmobile/databases/config.db
chmod -R 660 /data/data/com.pubg.krmobile/databases/iMSDK.db
#REMOVING_FILES
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/cache
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.14.5.11180_20190911132401_336715309_cures.ifs.res
timeout 5 cmatrix
echo
echo "STARTING THE MINIMISED GAME"|lolcat| pv -qL 80
echo
am start -n com.pubg.krmobile/com.epicgames.ue4.SplashActivity &> /dev/null
echo "STARTING THE LOG CLEANER SERVICE & CLEANING PAST GAME RECORDS"|lolcat| pv -qL 80
echo
#RESTORE DATA
sleep 30
trap ctrl-c INT
function ctrl-c() {
echo "KEYBOARDINTERRUPTION DETECTED ! RESTORING EVERYTHING NOW "|lolcat| pv -qL 80
rm -rf /data/data/com.pubg.krmobile/lib
mv /sdcard/ARIES_XCODEINE/BACKUP1/lib /data/data/com.pubg.krmobile/lib
su -c iptables --flush
iptables -P INPUT ACCEPT &>/dev/null
iptables -P OUTPUT ACCEPT &>/dev/null
iptables -P FORWARD ACCEPT &>/dev/null
iptables -F &>/dev/null
iptables -t nat -F &>/dev/null
ip6tables -F &>/dev/null
chmod -R 755 /data/data/com.pubg.krmobile/lib/libtersafe.so
chmod -R 755 /data/data/com.pubg.krmobile/lib/libtprt.so
chmod -R 755 /data/data/com.pubg.krmobile/lib/libUE4.so
chmod -R 755 /data/data/com.pubg.krmobile/lib/libxguardian.so
chmod -R 755 /data/data/com.pubg.krmobile/lib/libBugly.so
chmod -R 755 /data/data/com.pubg.krmobile/lib/libgcloud.so
#RestoreDATA
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/cache
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
echo
echo "THANKS FOR CHOOSING PROJECT-ARIEA XCODEINE"|lolcat| pv -qL 80
echo
play $HOME/PROJECT-ARIEA XCODEINE/goodbye.mp3 &> /dev/null
toilet "THANKS FOR CHOOSING US" -f term -F border --gay | pv -qL 80
echo
sleep 1
echo "FEEL FREE TO SHARE YOUR EXPERIENCE"|lolcat| pv -qL 200
echo
exit
}
while true; do #(nested-loop)
c=1
while [[ $c -le 10 ]]
do
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/cache &>/dev/null
rm -rf /data/data/com.pubg.krmobile/cache &>/dev/null
rm -rf /data/data/com.pubg.krmobile/code_cache &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache &>/dev/null
rm -rf /data/data/com.tencent.ig/cache &>/dev/null
rm -rf /data/data/com.tencent.ig/code_cache &>/dev/null
echo "LOGS CLEANED SUCCESSFULLY !" |lolcat
done
done
;;
3)
echo "OPENING THE GAME NOW, PLEASE MINIMISE IT AT PUBG LOGO[BLACK SCREEN] AND RETURN TO TERMUX"|lolcat| pv -qL 80
echo
am start -n com.rekoo.pubgm/com.epicgames.ue4.SplashActivity &> /dev/null
sleep 40
am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null
echo "MAKING BACKUP OF ORIGINAL LIBS"|lolcat| pv -qL 80
echo
cp -r /data/data/com.rekoo.pubgm/lib /sdcard/ARIES_XCODEINE/BACKUP1
cp -r /data/data/com.rekoo.pubgm/lib /storage/emulated/0/ARIES_XCODEINE/BACKUP
echo "GENERATING NEW LIB FILES"|lolcat| pv -qL 80
echo "THIS MAY TAKE UPTO 2-3 MINUTES"|lolcat| pv -qL 80
echo
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzlib.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzip.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libUE4.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtprt.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtersafe.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/liblbs.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libigshare.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libgcloud.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libBugly.so bs=87678 count=100 &>/dev/null
echo "MOVING UP MODDED LIBS"|lolcat| pv -qL 80
echo
mv /sdcard/ARIES_XCODEINE/MOD/libUE4.so /data/data/com.rekoo.pubgm/lib
mv /sdcard/ARIES_XCODEINE/MOD/libBugly.so /data/data/com.rekoo.pubgm/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtersafe.so /data/data/com.rekoo.pubgm/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtprt.so /data/data/com.rekoo.pubgm/lib
mv /sdcard/ARIES_XCODEINE/MOD/libxguardian.so /data/data/com.rekoo.pubgm/lib
mv /sdcard/ARIES_XCODEINE/MOD/libgcloud.so /data/data/com.rekoo.pubgm/lib
echo "BYPASSING LIBRARY-CHANGED DETECTION"|lolcat| pv -qL 80
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libhelpshiftlistener.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libUE4.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libzip.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libzlib.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libtpnsSecurity.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libzlib.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libIMSDK.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libTDataMaster.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libtersafe.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libtprt.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libxguardian.so
chmod -R 660 /data/data/com.rekoo.pubgm/lib/libgcloud.so
#EXTRA_PERMISSION
chmod -R 660 /data/data/com.rekoo.pubgm/databases/__hs__db_issues
chmod -R 660 /data/data/com.rekoo.pubgm/databases/__hs__db_key_values
chmod -R 660 /data/data/com.rekoo.pubgm/databases/__hs__db_properties
chmod -R 660 /data/data/com.rekoo.pubgm/databases/__hs_db_helpshift_users
chmod -R 660 /data/data/com.rekoo.pubgm/databases/beacon_db
chmod -R 660 /data/data/com.rekoo.pubgm/databases/bugly_db_
chmod -R 660 /data/data/com.rekoo.pubgm/databases/config.db
chmod -R 660 /data/data/com.rekoo.pubgm/databases/iMSDK.db
#REMOVING_FILES
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/cache
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.14.5.11180_20190911132401_336715309_cures.ifs.res
timeout 5 cmatrix
echo
echo "STARTING THE MINIMISED GAME"|lolcat| pv -qL 80
echo
am start -n com.rekoo.pubgm/com.epicgames.ue4.SplashActivity &> /dev/null
echo "STARTING THE LOG CLEANER SERVICE & CLEANING PAST GAME RECORDS"|lolcat| pv -qL 80
echo
#RESTORE DATA
sleep 30
trap ctrl-c INT
function ctrl-c() {
echo "KEYBOARDINTERRUPTION DETECTED ! RESTORING EVERYTHING NOW "|lolcat| pv -qL 80
rm -rf /data/data/com.rekoo.pubgm/lib
mv /sdcard/ARIES_XCODEINE/BACKUP1/lib /data/data/com.rekoo.pubgm/lib
su -c iptables --flush
iptables -P INPUT ACCEPT &>/dev/null
iptables -P OUTPUT ACCEPT &>/dev/null
iptables -P FORWARD ACCEPT &>/dev/null
iptables -F &>/dev/null
iptables -t nat -F &>/dev/null
ip6tables -F &>/dev/null
chmod -R 755 /data/data/com.rekoo.pubgm/lib/libtersafe.so
chmod -R 755 /data/data/com.rekoo.pubgm/lib/libtprt.so
chmod -R 755 /data/data/com.rekoo.pubgm/lib/libUE4.so
chmod -R 755 /data/data/com.rekoo.pubgm/lib/libxguardian.so
chmod -R 755 /data/data/com.rekoo.pubgm/lib/libBugly.so
chmod -R 755 /data/data/com.rekoo.pubgm/lib/libgcloud.so
#RestoreDATA
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/cache
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
echo
echo "THANKS FOR CHOOSING PROJECT-ARIEA XCODEINE"|lolcat| pv -qL 80
echo
play $HOME/PROJECT-ARIEA XCODEINE/goodbye.mp3 &> /dev/null
toilet "THANKS FOR CHOOSING US" -f term -F border --gay | pv -qL 80
echo
sleep 1
echo "FEEL FREE TO SHARE YOUR EXPERIENCE"|lolcat| pv -qL 200
echo
exit
}
while true; do #(nested-loop)
c=1
while [[ $c -le 10 ]]
do
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/cache &>/dev/null
rm -rf /data/data/com.rekoo.pubgm/cache &>/dev/null
rm -rf /data/data/com.rekoo.pubgm/code_cache &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.rekoo.pubgm/cache &>/dev/null
rm -rf /data/data/com.rekoo.pubgm/cache &>/dev/null
rm -rf /data/data/com.rekoo.pubgm/code_cache &>/dev/null
done
done
;;
4)
echo "OPENING THE GAME NOW, PLEASE MINIMISE IT AT PUBG LOGO[BLACK SCREEN] AND RETURN TO TERMUX"|lolcat| pv -qL 80
echo
am start -n com.vng.pubgmobile/com.epicgames.ue4.SplashActivity &> /dev/null
sleep 40
am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null
echo "MAKING BACKUP OF ORIGINAL LIBS"|lolcat| pv -qL 80
echo
cp -r /data/data/com.vng.pubgmobile/lib /sdcard/ARIES_XCODEINE/BACKUP1
cp -r /data/data/com.vng.pubgmobile/lib /storage/emulated/0/ARIES_XCODEINE/BACKUP
echo "GENERATING NEW LIB FILES"|lolcat| pv -qL 80
echo "THIS MAY TAKE UPTO 2-3 MINUTES"|lolcat| pv -qL 80
echo
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzlib.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libzip.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libUE4.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtprt.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libtersafe.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/liblbs.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libigshare.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libgcloud.so bs=87678 count=100 &>/dev/null
dd if=/dev/urandom of=/sdcard/ARIES_XCODEINE/MOD/libBugly.so bs=87678 count=100 &>/dev/null
echo "MOVING UP MODDED LIBS"|lolcat| pv -qL 80
echo
mv /sdcard/ARIES_XCODEINE/MOD/libUE4.so /data/data/com.vng.pubgmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libBugly.so /data/data/com.vng.pubgmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtersafe.so /data/data/com.vng.pubgmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libtprt.so /data/data/com.vng.pubgmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libxguardian.so /data/data/com.vng.pubgmobile/lib
mv /sdcard/ARIES_XCODEINE/MOD/libgcloud.so /data/data/com.vng.pubgmobile/lib
echo "BYPASSING LIBRARY-CHANGED DETECTION"|lolcat| pv -qL 80
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libhelpshiftlistener.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libUE4.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libzip.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libzlib.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libtpnsSecurity.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libzlib.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libIMSDK.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libTDataMaster.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libtersafe.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libtprt.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libxguardian.so
chmod -R 660 /data/data/com.vng.pubgmobile/lib/libgcloud.so
#EXTRA_PERMISSION
chmod -R 660 /data/data/com.vng.pubgmobile/databases/__hs__db_issues
chmod -R 660 /data/data/com.vng.pubgmobile/databases/__hs__db_key_values
chmod -R 660 /data/data/com.vng.pubgmobile/databases/__hs__db_properties
chmod -R 660 /data/data/com.vng.pubgmobile/databases/__hs_db_helpshift_users
chmod -R 660 /data/data/com.vng.pubgmobile/databases/beacon_db
chmod -R 660 /data/data/com.vng.pubgmobile/databases/bugly_db_
chmod -R 660 /data/data/com.vng.pubgmobile/databases/config.db
chmod -R 660 /data/data/com.vng.pubgmobile/databases/iMSDK.db
#REMOVING_FILES
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/cache
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.14.5.11180_20190911132401_336715309_cures.ifs.res
timeout 5 cmatrix
echo
echo "STARTING THE MINIMISED GAME"|lolcat| pv -qL 80
echo
am start -n com.vng.pubgmobile/com.epicgames.ue4.SplashActivity &> /dev/null
echo "STARTING THE LOG CLEANER SERVICE & CLEANING PAST GAME RECORDS"|lolcat| pv -qL 80
echo
#RESTORE DATA
sleep 30
trap ctrl-c INT
function ctrl-c() {
echo "KEYBOARDINTERRUPTION DETECTED ! RESTORING EVERYTHING NOW "|lolcat| pv -qL 80
rm -rf /data/data/com.vng.pubgmobile/lib
mv /sdcard/ARIES_XCODEINE/BACKUP1/lib /data/data/com.vng.pubgmobile/lib
su -c iptables --flush
iptables -P INPUT ACCEPT &>/dev/null
iptables -P OUTPUT ACCEPT &>/dev/null
iptables -P FORWARD ACCEPT &>/dev/null
iptables -F &>/dev/null
iptables -t nat -F &>/dev/null
ip6tables -F &>/dev/null
chmod -R 755 /data/data/com.vng.pubgmobile/lib/libtersafe.so
chmod -R 755 /data/data/com.vng.pubgmobile/lib/libtprt.so
chmod -R 755 /data/data/com.vng.pubgmobile/lib/libUE4.so
chmod -R 755 /data/data/com.vng.pubgmobile/lib/libxguardian.so
chmod -R 755 /data/data/com.vng.pubgmobile/lib/libBugly.so
chmod -R 755 /data/data/com.vng.pubgmobile/lib/libgcloud.so
#RestoreDATA
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/cache
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
echo
echo "THANKS FOR CHOOSING PROJECT-ARIEA XCODEINE"|lolcat| pv -qL 80
echo
play $HOME/PROJECT-ARIEA XCODEINE/goodbye.mp3 &> /dev/null
toilet "THANKS FOR CHOOSING US" -f term -F border --gay | pv -qL 80
echo
sleep 1
echo "FEEL FREE TO SHARE YOUR EXPERIENCE"|lolcat| pv -qL 200
echo
exit
}
while true; do #(nested-loop)
c=1
while [[ $c -le 10 ]]
do
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/cache &>/dev/null
rm -rf /data/data/com.vng.pubgmobile/cache &>/dev/null
rm -rf /data/data/com.vng.pubgmobile/code_cache &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &>/dev/null
rm -rf /storage/emulated/0/tencent
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/*cures.ifs.res &>/dev/null
rm -rf /storage/emulated/0/.backups &>/dev/null
touch /storage/emulated/0/.backups &>/dev/null
rm -rf /storage/emulated/0/tencent &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/.fff &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/.system_android_l2 &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json &>/dev/null
rm -rf /storage/emulated/0/Android/data/com.vng.pubgmobile/cache &>/dev/null
rm -rf /data/data/com.vng.pubgmobile/cache &>/dev/null
rm -rf /data/data/com.vng.pubgmobile/code_cache &>/dev/null
done
done
;;
5)
echo "THIS HACK IS CURRENTLY UNDER DEVELOPMENT PLEAE WAIT FOR IT" |lolcat| pv -qL 80
esac
done
;;
6)
echo "THIS HACK IS CURRENTLY UNDER DEVELOPMENT PLEAE WAIT FOR IT" |lolcat| pv -qL 80
esac
done
;;
7)
echo "THIS HACK IS CURRENTLY UNDER DEVELOPMENT PLEAE WAIT FOR IT" |lolcat| pv -qL 80
;;
esac
done