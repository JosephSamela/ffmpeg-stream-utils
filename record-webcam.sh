
# Used ffmpeg to record webcam (/dev/video0) to file
FILENAME=`date '+%Y.%m.%d_%H.%M.%S'`
ffmpeg -f v4l2 -framerate 30 -video_size 1920x1080 -i /dev/video0 ~/Videos/recordings/webcam-$FILENAME.mkv
