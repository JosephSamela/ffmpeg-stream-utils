
# Used ffmpeg to record webcam (/dev/video0) to file
ffmpeg -f v4l2 -framerate 24 -video_size 1280x720 -i /dev/video0 output.mkv
