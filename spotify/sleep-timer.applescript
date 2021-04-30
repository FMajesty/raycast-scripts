#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Sleep Timer
# @raycast.mode compact

# Optional parameters:
# @raycast.packageName Sleep Timer
# @raycast.argument1 { "type": "text", "placeholder": "Minutes before turning off", "percentEncoded": true}

# Documentation:
# @raycast.author Nikita Y.
# @raycast.authorURL fmajesty.xyz

on run argv
	set time_before_sleep to item 1 of argv as integer
	delay time_before_sleep * 60
	tell application "Spotify" to playpause
	tell application "Finder" to sleep
end run

