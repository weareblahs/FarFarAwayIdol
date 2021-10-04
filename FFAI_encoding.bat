@echo off
echo Shrek 2 "Far Far Away Idol" title encoder to web-compatible format
echo for use on weareblahs/FarFarAwayIdol, a interactive HTML5 version of the game itself
echo Now, please type / paste the filename of the title of the DVD after you ripped the selected titles from MakeMKV. (with the MKV file extension)
echo After every filename you type, press the "Enter" button.
echo Opening:
set /P title1=""
echo "Cast Your Vote" screen:
set /P title2=""
echo Donkey Ending:
set /P title3=""
echo Puss in Boots ending:
set /P title4=""
echo Shrek and Fiona ending:
set /P title5=""
echo Simon Cowell ending "You Gotta Be Joking":
set /P title6=""
echo Simon Cowell ending "Sorry, That is complete rubbish":
set /P title7=""
echo Simon Cowell ending "Impossible, I won't allow it":
set /P title8=""
echo Simon Cowell ending "Please, I don't think so":
set /P title9=""
echo Simon Cowell ending "Sorry, I'm afraid I choose wrong":
set /P title10=""
echo Simon Cowell ending "Now you're being ridiculous":
set /P title11=""
echo Simon Cowell ending "That is just wrong":
set /P title12=""
echo After you press any key, it will start encoding.
echo Please make sure that you have a QSV / QuickSync-compatible encoder before you encode,
echo or you can just change the encoder inside this batch file (can use find and replace to
echo change).
echo This batch script uses h264_qsv by default,
echo Supported encoding formats for web: h264, h264_qsv, h264_nvenc
echo Supported muxing formats: mp4
echo Supported audio formats: aac, vorbis
echo
echo Currently using, h264_qsv 5000k, aac 192k
echo 
echo TL;DR: You have Intel processor? then press any button to continue.
pause
echo Encoding started.
ffmpeg -i %title1% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 merge1.mp4
ffmpeg -i %title2% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 merge2.mp4
ffmpeg -f concat -i mergevid -c:v copy -c:a copy assets\intro.mp4
ffmpeg -i %title3% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending1.mp4
ffmpeg -i %title4% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending2.mp4
ffmpeg -i %title5% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending3.mp4
ffmpeg -i %title6% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending4.mp4
ffmpeg -i %title7% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending5.mp4
ffmpeg -i %title8% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending6.mp4
ffmpeg -i %title9% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending7.mp4
ffmpeg -i %title10% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending8.mp4
ffmpeg -i %title11% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending9.mp4
ffmpeg -i %title12% -c:v h264_qsv -b:v 5000k -c:a aac -b:a 192k -ac 2 assets\ending10.mp4
echo Encoding for main assets complete!
echo You can safely remove all the original MKV files.
pause
exit