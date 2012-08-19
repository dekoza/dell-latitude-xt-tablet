dell-latitude-xt-tablet
=======================

How to use Dell Latitude XT tablet with Linux - config files and HOWTOs.

**This is work in progress**. Some of the configs, tips and HOWTOs are taken from [rafi's site](http://ofb.net/~rafi/latitude_xt.html), [Gentoo's Wiki](http://en.gentoo-wiki.com/wiki/Dell_Latitude_XT) and [Rene Mayrhofer's virtual home](http://www.mayrhofer.eu.org/kubuntu-on-dell-latitude-xt), although I found them a bit outdated. This is my personal approach and refinement to the case.

Features
========

As of 2012-08-15 all major Linux distributions should install fine
and utilize most of the features out-of-the-box. However there are some
annoyances that pushed me to investigate the case to the fullest as
I want to have a "full Latitude XT experience" (with some personal
twists) that Windows users have:

1. Touchscreen (using finger and pen)
   - multitouch if [possible](http://gizmodo.com/5025829/dell-latitude-xt-multi+touch-update-available-now).
   - automatic switch to tablet mode (disable touch if pen is near screen - easier scetching) if possible
   - long-press for RMB menu
2. Screen & pointer rotation
3. Fingerprint reader with optimal usability/safety solution (eg. login and unlock encrypted partition using password then just use fingerprints for unlocks, sudo etc.)
4. Isolate and use every key on the lid. In present installations some buttons are confused and some are not recognized.
   - Use jog-click for mode select between Volume/Brightness/Scroll and then use up/down appropriately
   - Use BackKey as Esc/Ctrl+Z
5. Fully functional wireless:
   - native WiFi (no ndiswrapper), with sniffing capability ;)
   - WWAN* (cellular network)
   - BlueTooth*
6. Reuse WiFi Catcher button as BT switch.
7. Use GPS* for navigation and geotagging.

*) Optional module

My distribution of choice is [Arch Linux](http://archlinux.org) but I hope to write everything as distro-agnostic as possible.



Contributing
============

Any help is appreciated. Just use issue tracker and/or pull requests.