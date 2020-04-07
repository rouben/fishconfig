# This function executes when exiting the shell
function on_exit --on-event fish_exit
    echo Clearing screen...
    sleep 0.3
    clear
end
