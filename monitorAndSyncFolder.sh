#!/bin/zsh
export HOME=/home/pi
PATH=$PATH:/home/pi/.local/bin

dir1=images/20200528/
while inotifywait -qqre modify "$dir1"; do
	aws s3 sync images/20200528 s3://allsky-camera-data/20200528 --profile allsky
done

