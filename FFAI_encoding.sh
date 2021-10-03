echo "Shrek 2 "Far Far Away Idol" title encoder to web-compatible format"
echo "for use on weareblahs/FarFarAwayIdol, a interactive HTML5 version of the game itself"
echo "Now, please type / paste the filename of the title of the DVD after you ripped the selected titles from MakeMKV. (with the MKV file extension)"
echo "After every filename you type, press the "Enter" button."
read -p "Opening:" title1
read -p "Cast Your Vote screen:" title2
read -p "Donkey Ending:" title3
read -p "Puss in Boots ending:" title4
read -p "Shrek and Fiona ending:" title5
read -p "Simon Cowell ending - You Gotta Be Joking:" title6
read -p "Simon Cowell ending - Sorry, That is complete rubbish:" title7
read -p "Simon Cowell ending - Impossible, I won't allow it:" title8
read -p "Simon Cowell ending - Please, I don't think so:" title9
read -p "Simon Cowell ending - Sorry, I'm afraid I choose wrong:" title10
read -p "Simon Cowell ending - Now you're being ridiculous:" title11
read -p "Simon Cowell ending - That is just wrong:" title12
echo "After you press any key, it will start encoding."
echo "Please make sure that you have a QSV / QuickSync-compatible encoder before you encode,"
echo "or you can just change the encoder inside this batch file (can use find and replace to"
echo "change)."
echo "This batch script uses h264_qsv by default,"
echo "Supported encoding formats for web: h264, h264_qsv, h264_nvenc"
echo "Supported muxing formats: mp4"
echo "Supported audio formats: aac, vorbis"
echo ""
echo "Currently using, h264_qsv 5000k, aac 192k"
echo ""
echo "Due to Linux (or available FFMPEG packages on the package manager) didn't support Quicksync encoding,"
echo "Linux users can modify this file by changing h264_qsv to h264 for software encoding."
echo ""
echo "If you have your own build of FFMPEG, which you built with --enable-encoder=h264_qsv, then you can"
echo "proceed safely. Verify it by opening a terminal window / Ctrl+C then ffmpeg to ensure you have QSV"
echo "enabled. For Mac devices, please ensure that your PC has Intel graphics."
echo ""
read -p "TL;DR: You have Intel processor? then press any button to continue."
echo "Encoding started."
ffmpeg -i $title1 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 merge1.mp4
ffmpeg -i $title2 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 merge2.mp4
ffmpeg -f concat -i mergevid -c:v copy -c:a copy ffai_main\assets\intro.mp4
ffmpeg -i $title3 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending1.mp4
ffmpeg -i $title4 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending2.mp4
ffmpeg -i $title5 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending3.mp4
ffmpeg -i $title6 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending4.mp4
ffmpeg -i $title7 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending5.mp4
ffmpeg -i $title8 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending6.mp4
ffmpeg -i $title9 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending7.mp4
ffmpeg -i $title10 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending8.mp4
ffmpeg -i $title11 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending9.mp4
ffmpeg -i $title12 -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 ffai_main\assets\ending10.mp4
echo "Encoding for main assets complete!"
echo "You can safely remove all the original MKV files."
pause
exit