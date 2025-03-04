# Mac Webcam RTSP Test

## Requirements

**1. FFmpeg**

```sh
curl -L -o ffmpeg.zip https://evermeet.cx/ffmpeg/ffmpeg-6.0.zip
unzip ffmpeg.zip
chmod +x ffmpeg
sudo mv ffmpeg /usr/local/bin/
ffmpeg -version
```

**2. RTSP Server**

```sh
curl -L -o mediamtx.tar.gz https://github.com/bluenviron/mediamtx/releases/download/v1.11.3/mediamtx_v1.11.3_darwin_amd64.tar.gz
tar -xvzf mediamtx.tar.gz
chmod +x mediamtx
sudo mv mediamtx /usr/local/bin/
```

## How to Run

```sh
# Run the server
mediamtx

# Run the script
chmod +x start_rtsp_stream.sh
./start_rtsp_stream.sh
```

The RTSP stream will be available at:

```
rtsp://username:password@localhost:8554/stream1
```
