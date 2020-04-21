# GPG related stuff
export GPG_TTY=(tty)
export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)

# DEB packaging stuff
export DEBFULLNAME="Rouben Tchakhmakhtchian"
export DEBEMAIL="rouben@rouben.net"

set -gx PATH .cargo/bin .rustup/bin /snap/bin $PATH

# Tackle and Tacklebox related stuff (doesn't really work)
#set tacklebox_path ~/.tackle
#set tacklebox_modules virtualfish virtualhooks
#set tacklebox_plugins grc docker extract
# All themes are broken
#set tacklebox_theme urdh

#set tacklebox_path ~/.tackle
#set tacklebox_modules virtualfish virtualhooks
#set tacklebox_plugins extract grc pip python up
#set tacklebox_theme budspencer

#source ~/.tacklebox/tacklebox.fish
