# GPG related stuff
export GPG_TTY=(tty)
export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)
echo UPDATESTARTUPTTY | /usr/bin/gpg-connect-agent

# DEB packaging stuff
export DEBFULLNAME="Rouben Tchakhmakhtchian"
export DEBEMAIL="rouben@rouben.net"

set -gx PATH .cargo/bin $PATH
set -gx PATH .rustup/bin $PATH
set -gx PATH .local/bin $PATH
set -gx PATH /snap/bin $PATH
#eval (/opt/miniconda2/bin/conda shell.fish hook)
#/opt/miniconda2/bin/conda shell.fish hook | source

