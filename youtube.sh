#!/bin/bash
eval "mpv --ytdl-format=bestvideo[height\<=240]+bestaudio/best " ${1}
