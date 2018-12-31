
# https://wiki.archlinux.org/index.php/Streaming_to_twitch.tv

KEY="your stream key here!"

INRES="1608x1050" # input resolution
OUTRES="1680x1050" # output resolution
FPS="24" # target FPS
GOP="48" # i-frame interval, should be double of FPS, 
GOPMIN="24" # min i-frame interval, should be equal to fps, 
THREADS="2" # max 6
CBR="1000k" # constant bitrate (should be between 1000k - 3000k)
QUALITY="ultrafast"  # one of the many FFMPEG preset
AUDIO_RATE="44100"
STREAM_KEY="live_56801934_DeUOxpcNfBA77TETwQVJPsCpIc9b0y"
SERVER="live-jfk" # twitch server in frankfurt, see http://bashtech.net/twitch/ingest.php for list

ffmpeg -f x11grab -s "$INRES" -r "$FPS" -i :1.0 -f alsa -i pulse -f flv -ac 2 -ar $AUDIO_RATE \
       -vcodec libx264 -g $GOP -keyint_min $GOPMIN -b:v $CBR -minrate $CBR -maxrate $CBR -pix_fmt yuv420p\
       -s $OUTRES -preset $QUALITY -tune film -acodec libmp3lame -threads $THREADS -strict normal \
       -bufsize $CBR "rtmp://$SERVER.twitch.tv/app/$STREAM_KEY"
~                                                                                                  
