# pkgsrc-buildenv
Dockerized bootstrapped pkgsrc build environment based on a debian 8 image.

# Purpose
Provides a pre-bootstrapped pkgsrc installation over debian 8.  The pkgsrc
installation is bootstrapped to /opt/bootstrap, so all pkgsrc packages will
be installed there.

See mk.conf for default configuration and adjust as necessary

The build process will clone pkgsrc's latest git repo, so if you need anything
other than that, a slight modification to the Dockerfile might be necessary
