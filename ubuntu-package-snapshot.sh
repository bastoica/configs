#!/bin/bash


# Update Ubuntu package list
sudo apt-get install -y software-properties-common
sudo apt-get update


# Install packages
sudo apt-get install -y --reinstall bash-completion
sudo apt-get install -y apt-clone
sudo apt-get install -y apt-file
sudo apt-get install -y apt-show-versions
sudo apt-get install -y aptitude
sudo apt-get install -y autoconf
sudo apt-get install -y autoconf-archive
sudo apt-get install -y autoconf-dickey
sudo apt-get install -y autoconf-gl-macros
sudo apt-get install -y autogen
sudo apt-get install -y automake
sudo apt-get install -y bash-completion
sudo apt-get install -y binutils-dev
sudo apt-get install -y bison
sudo apt-get install -y build-essential
sudo apt-get install -y byacc
sudo apt-get install -y byacc-j
sudo apt-get install -y byobu
sudo apt-get install -y ceph-fs-common
sudo apt-get install -y clamz
sudo apt-get install -y clang-3.9 lldb-3.9
sudo apt-get install -y cmake
sudo apt-get install -y cmake-curses-gui
sudo apt-get install -y colormake
sudo apt-get install -y cpp-5
sudo apt-get install -y cppcheck
sudo apt-get install -y dos2unix
sudo apt-get install -y ffmpeg
sudo apt-get install -y firefox
sudo apt-get install -y flex
sudo apt-get install -y flite1-dev
sudo apt-get install -y libgomp1
sudo apt-get install -y gcc-5
sudo apt-get install -y gcc-avr
sudo apt-get install -y gcc-multilib
sudo apt-get install -y gdb
sudo apt-get install -y gedit
sudo apt-get install -y gedit-dev
sudo apt-get install -y gegl
sudo apt-get install -y git
sudo apt-get install -y git-core
sudo apt-get install -y git-man
sudo apt-get install -y gnuplot
sudo apt-get install -y gnuplot-nox
sudo apt-get install -y graphviz
sudo apt-get install -y graphviz-dev
sudo apt-get install -y grub-pc-bin
sudo apt-get install -y gtk-doc-tools
sudo apt-get install -y gtk-sharp2-gapi
sudo apt-get install -y gtk-theme-switch
sudo apt-get install -y gtk2-engines
sudo apt-get install -y guile-1.8
sudo apt-get install -y htop
sudo apt-get install -y iperf
sudo apt-get install -y libstdc++-5-dev
sudo apt-get install -y make
sudo apt-get install -y mercurial
sudo apt-get install -y perl
sudo apt-get install -y python python3
sudo apt-get install -y python-all-dbg
sudo apt-get install -y python-all-dev
sudo apt-get install -y python-pip python3-pip
sudo pip install numpy
sudo pip3 install numpy
sudo apt-get install -y quota
sudo apt-get install -y systemtap
sudo apt-get install -y systemtap-client
sudo apt-get install -y systemtap-common
sudo apt-get install -y systemtap-dbgsym
sudo apt-get install -y systemtap-doc
sudo apt-get install -y time
sudo apt-get install -y vim
sudo apt-get install -y vlc
sudo apt-get install -y vorbis-tools
sudo apt-get install -y yasm
sudo apt-get install -y zenity
sudo apt-get install -y zip
sudo apt-get install -y zlib1g-dev


# Enable byobu
byobu-enable


# Reset session to enable updates
logout || exit
