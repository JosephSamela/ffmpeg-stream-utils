
# Used ffmpeg to record webcam (/dev/video0) to file
ffmpeg -f v4l2 -framerate 30 -video_size 1920x1080 -i /dev/video0 output.mkv
