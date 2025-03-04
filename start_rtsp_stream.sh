#!/bin/bash

# Set the video input source (change if necessary)
VIDEO_INPUT="0"

# Set the RTSP server address (MediaMTX is listening on port 8554)
RTSP_URL="rtsp://username:password@localhost:8554/stream1"

echo "Starting RTSP stream to $RTSP_URL..."

ffmpeg -f avfoundation -pixel_format nv12 -framerate 30 -i "$VIDEO_INPUT" -c:v libx264 -preset ultrafast -tune zerolatency -f rtsp "$RTSP_URL"
