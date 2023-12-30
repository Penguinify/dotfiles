if status is-interactive
    # Commands to run in interactive sessions can go here
end

set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec Hyprland
