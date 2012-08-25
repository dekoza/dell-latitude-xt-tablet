===============
Screen rotation
===============


Several things need to be covered in order to rotate the screen
properly:
1. Detection
2. Visual rotation
3. Input rotation
4. Settings

Detection
=========

Latitude XT detects the screen rotation but to be able to use it in Linux,
you need to patch dell_wmi module.

Visual rotation
===============

Visual rotation is quite easy with XrandR.


Input rotation
==============

This is quite tricky. I managed to get the stylus input rotated
properly using ``xsetwacom`` with appropriate ``Coordinate 
Transformation Matrix``.

Unfortunately finger input (touchscreen/multitouch) is unusable
due to constant "jumps" and glitches.

Script
======

I found this script on `LinuxMint forum <http://forums.linuxmint.com/viewtopic.php?f=191&t=108174>`_ 
and it's the best rotation script I could find:

.. include:: ../scripts/rotate.sh

I modified it a bit to only rotate to the right and back.

You can easily bind this script to RotateScreenButton on the display.
