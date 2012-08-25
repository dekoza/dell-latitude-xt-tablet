============================
Utilizing fingerprint reader
============================


The reader in my system was detected (using ``lsusb``) as
``Bus 004 Device 002: ID 0483:2016 SGS Thomson Microelectronics Fingerprint
Reader``

I found ``fprintd`` totally useless but some docs pointed to `fingerprint-gui
<http://darkblue.homeip.net/fingerprint/index.php>`_ Thanks to this utility
I managed to get really good experience with the reader.

It lets you configure the device, enroll any fingers and test authentication.


Configuration
=============

Before anything you need to configure PAM to use fingerprint auth.
I wanted sudo and gnome-screensaver to ask me for a fingerprint,
with password as a fallback. Both programs have their respective
entries in Arch's ``/etc/pam.d/`` All you need to do is put
``auth sufficient pam_fingerprint-gui.so -d try_first_identified``
before the line containing ``auth .... pam_unix.so`` so the
fingerprint will be asked before password.


Enroll fingerprints
===================

Use ``fingerprint-gui`` to enroll fingerprints and test services.


