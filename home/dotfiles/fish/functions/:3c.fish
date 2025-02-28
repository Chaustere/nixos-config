function :3c
	set -f screen_height (tput lines)
	set -f height (math ceil $screen_height/2)
	set -f y (math $screen_height - $height)
	set -f y (math ceil $y / 2)
	set -f width (tput cols)
    icat --scale-up --hold --place {$width}x$height@0x$y ~/Images/Niko_colon_three_c.webp
	icat --clear
end
