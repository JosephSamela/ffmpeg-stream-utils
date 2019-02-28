echo "\nRECORDING FROM:  `arecord -l | grep \"card 2\"`"
FILENAME=`date '+%Y.%m.%d_%H.%M.%S.wav'`
FILEPATH=`pwd`
echo "RECORDING TO  :  \"$FILEPATH$FILENAME\""
echo "Press \"q\" to stop recording\n"
ffmpeg -hide_banner  -f alsa -i hw:2,0 -af acompressor=threshold=-21dB:ratio=9:attack=200:release=1000 $FILENAME 
