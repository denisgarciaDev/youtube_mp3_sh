#!/bin/bash

echo "Music Youtube Downloader v0.0.1"

while read p; do
	youtube-dl -q --extract-audio --audio-format mp3 $p
	COUNTER=$(($COUNTER + 1))
done <$2

mkdir $1
mv *.mp3 $1
ls -la $1
echo "Foram baixadas ${COUNTER} musicas e movidas para a pasta ${1}."
