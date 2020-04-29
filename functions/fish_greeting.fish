function fish_greeting --description="Customize default fish shell greeting message"
	if command -sq neofetch
		neofetch
	else if command -sq screenfetch
		# Use -E to avoid readlink error
		screenfetch -E
	end
	if functions -q taocl
		taocl
	end 
	if test "$USER" = "root"
		set_color red
		echo
		echo You are root. Be careful!
		echo
		set_color normal
	else
		if command -sq fortune
			fortune -e -a
		end
		set_color green
		echo
		echo Hello, $USER, welcome!
		echo
		set_color normal
	end
end
