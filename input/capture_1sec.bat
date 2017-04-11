
set /a count=0

:loop
ffmpeg -f dshow -video_size 640x480 -i video="1.3M HD WebCam" -vframes 1 pic%count%.png -y
ffmpeg -i pic%count%.png -vf scale=8:-1 a_pic%count%.png
timeout /t 1
set /a count+=1
goto loop