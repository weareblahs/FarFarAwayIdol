# What's all about this?
You'll be able to play the Shrek 2 DVD Extra "Far Far Away Idol" as HTML5. Inspired by joric/bandersnatch's idea for bringing interactive videos using open-source software with HTML5.

# What's actually used inside?
 - liqvidjs (For playing video and main interactive video component)
 - Node.js (Web server stuffs)

# What's finished developing
 - Vote Screen for 1920x1080
 - Intro Video

# Developing checklist
 - Ending Videos Link
 - End Credits Link
 - FFMPEG auto-run scripts for encoding (First-time setup)
 - Video.js video playback for ending videos (or using back liqvidjs?)

# What you'll need
 - Shrek 2 (DVD)
   - This version is developed with a 2004 version of the Shrek 2 DVD (Region 3). 
 - DVD Drive
   - You can rip the FFAI contents with your DVD Drive and MakeMKV. There should be 10 MKV files.
 - FFMPEG on PATH / same directory of this repository
   - Convert the ripped MKV files to MP4 for browser reading.

# Titles of the DVD that you need to rip
 - All the titles which the "Source Title ID" value on MakeMKV is 49. 

# How to run?
(FFMPEG autorun scripts for video isn't ready yet)
  
If you know, you know. As this project is fully based on node.js, This command can run this interactive experience through port 8000. Just follow this command before everything happens:
```batch
cd ffai_main && npm install && npm start
```
