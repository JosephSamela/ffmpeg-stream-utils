
# Used ffmpeg to record screen (/dev/video0) to file
FILENAME=`date '+%Y.%m.%d_%H.%M.%S'`
ffmpeg -f x11grab -framerate 30 -video_size 1920x1080 -i :0.0 -vcodec h264_nvenc ~/Videos/recordings/screen-$FILENAME.mkv

