# What's all about this?
![FireShot Capture 012 -  - localhost](https://user-images.githubusercontent.com/37889443/135724119-5a257b06-19fb-45ac-94af-71134755f2f7.png)
You'll be able to play the Shrek 2 DVD Extra "Far Far Away Idol" as HTML5. Inspired by joric/bandersnatch's idea for bringing interactive videos using open-source software with HTML5.

# What's actually used inside?
 - liqvidjs (For playing video and main interactive video component)
 - Node.js (Web server stuffs)

# The question: Why did I do this?
|![IMG_20211003_003936](https://user-images.githubusercontent.com/37889443/135725278-d24d791b-e15c-473a-934f-efd2e89fa898.jpg)|
|:--:| 
| *The version of the Shrek 2 DVD used to make this project* |  

Actually I have a copy of the iconic Shrek 2 DVD (if you know, you know - that one with a 3x3 grid DVD menu with donkey annoying other casts at the main menu), and there's an extra called "Far Far Away Idol" - only the 2004 DVD release have this interactive feature under the "DreamWorks Kids" category - or as I can say, after you played the movie on the DVD. Although Netflix has the full version of FFAI, it didn't provide interactive selection stuffs unlike the original DVD itself. So, I decided to make a HTML5 recreation of the Far Far Away Idol minigame.

# What's finished developing
 - Vote Screen for 1920x1080
 - Intro Video

# Developing checklist
 - Ending Videos Link
 - End Credits Link
 - FFMPEG auto-run scripts for encoding (First-time setup)
 - Video.js video playback for ending videos (or using back liqvidjs?)
 - Search for Other Endings (other than the Simon Cowell ones that are at MakeMKV Title 49)
 - Captions (if can)

# What to fix
 - Vote screen is bigger / smaller at different screen sizes other than 1920x929

# What you'll need
 - Shrek 2 (Widescreen DVD)
   - This version is developed with a 2004 version of the Shrek 2 DVD (Region 3). 
 - DVD Drive
   - You can rip the FFAI contents with your DVD Drive and MakeMKV. There should be 10 MKV files.
 - FFMPEG on PATH / same directory of this repository
   - Convert the ripped MKV files to MP4 for browser reading.

# Before you start
 - Put the Shrek 2 DVD into your disc drive
 - MakeMKV > Preferences > Video > Set "Minimum Title Length (seconds)" to 0 > Apply > OK
 - Rip entire Shrek 2 DVD
 - Take out the Far Far Away Idol range from the DVD (Mine is from title_t92.mkv to title_t104.mkv)
 - Copy these files to the root directory of the repository
 - Run `FFAI_Encoding.bat`

# What's the running environment that I'm currently using?
 - 1920x1080 screen with Google Chrome
   - Bookmark bar turned on
Some screens won't display normally until you did some fine tune with the CSS stuffs, such as the size of the thumbnails. (fun fact: 1920x1080 screen running Chrome without bookmark bar also gets messed up)
  
If anyone knows a method of getting stuffs normally displayed (responsive?), feel free to submit an issue.

# How to run? 
If you know, you know. As this project is fully based on node.js, This command can run this interactive experience through port 8000. Just follow this command before everything happens:
```batch
npm install && npm start
```
