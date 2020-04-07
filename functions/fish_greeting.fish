function fish_greeting --description "Customize default fish shell greeting message"
	if which neofetch > /dev/null
		neofetch
	else if which screenfetch > /dev/null
		screenfetch
	end 
	if test "$USER" = "root"
		set_color red
		echo
		echo You are root. Be careful!
		echo
		set_color normal
	else
		if which fortune > /dev/null
			fortune -e -a
		end
		set_color green
		echo
		echo Hello, $USER, welcome!
		echo
		set_color normal
	end
end
