#!/bin/sh
set -ex

# To use all.sh, just set the eight or nine environment variables it wants, then run it.
# Or better yet, read it, understand it, and *then* run it.
# See also doc/crosstool-howto.html
# Options to all.sh:
# --nounpack avoids unpacking the source tarballs and re-configuring; useful for quick redos.
# --nobuild  avoids building; useful if you just want to unpack sources or rerun regression tests.
# --notest   avoids running regression tests; they're hard to set up, so this is recommended when starting.
#
# Here's a demo for the impatient, showing all the configurations I've tested.
# It uses eval so it can store some of the environment variables in a file.
# If you don't like eval, you can set the environment variables some other way.
# Uncomment the one(s) you want to build, and comment out the others.
# Once that works, please try running the regression test by removing the --notest arg
# and setting up a chroot environment as described in doc/crosstool-howto.html.
# Total disk requirement: about 1.5GB per toolchain.
#
# This demo can build various toolchains for eleven processors: 
# alpha, arm, cris, i686, ia64, m68k, mips, powerpc750, powerpc405, sh4, and sparc.
# It can almost, but not quite, build toolchains for three processors:
# hppa, s390 and x86_64.
#


# Arm 
eval `cat mipsel-newlib.dat` `cat gcc3.3.2-newlib1.12.0.dat` sh all-newlib.sh --notest
