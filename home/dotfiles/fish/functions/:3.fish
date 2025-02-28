function :3
	set -f screen_height (tput lines)
	set -f height (math ceil $screen_height/2)
	set -f y (math $screen_height - $height)
	set -f y (math ceil $y / 2)
	set -f width (tput cols)
    icat --hold --scale-up --place {$width}x$height@0x$y ~/Images/Silly_Cat_animated.gif
	icat --clear
end
