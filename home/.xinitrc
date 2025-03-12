xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 96

xrdb ~/.Xresources

# Default session is i3 if no argument is provided
session=${1:-i3}

# Start the appropriate session based on the passed argument
case "$session" in
    i3|i3wm)
        exec i3
        ;;
    kde)
        exec startplasma-x11
        ;;
    xfce|xfce4)
        exec startxfce4
        ;;
    *)
        # Fallback to i3 if an unknown session is provided
        echo "Unknown session: $session" >&2
        exec i3
        ;;
esac
