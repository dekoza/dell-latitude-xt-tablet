#!/bin/sh

# Find the line in "xrandr -q --verbose" output that contains current screen orientation and "strip" out current orientation.

rotation="$(xrandr -q --verbose | grep 'connected' | egrep -o  '\) (normal|left|inverted|right) \(' | egrep -o '(normal|left|inverted|right)')"

# Using current screen orientation proceed to rotate screen and input devices.

case "$rotation" in
   normal)
    # rotate to the right
    xrandr -o right
    xsetwacom set "N-Trig Pen stylus" rotate cw
    xinput set-prop "N-Trig MultiTouch" "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1
    ;;
    right)
    # rotate to inverted
    xrandr -o inverted
     xsetwacom set "N-Trig Pen stylus" rotate half
    xinput set-prop "N-Trig MultiTouch" "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
    ;;
    inverted)
    # rotate to the left
    xrandr -o left
    xsetwacom set "N-Trig Pen stylus" rotate ccw
    xinput set-prop "N-Trig MultiTouch" "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1
    ;;
    left)
    # rotate to normal
    xrandr -o normal
     xsetwacom set "N-Trig Pen stylus" rotate none
    xinput set-prop "N-Trig MultiTouch" "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
    ;;
esac

