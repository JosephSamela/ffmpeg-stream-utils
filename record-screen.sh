
# Used ffmpeg to record webcam (/dev/video0) to file
ffmpeg -f x11grab -framerate 60 -video_size 3840x2160 -i :0.0 -vcodec libx264 -preset ultrafast output.mkv
