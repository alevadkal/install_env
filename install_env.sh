# !/bin/bash
set -e
set -x



# Codecs
sudo zypper addrepo -cfp 90 'https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/' packman
sudo zypper refresh
sudo zypper dist-upgrade --from packman --allow-vendor-change
sudo zypper install --from packman ffmpeg gstreamer-plugins-{good,bad,ugly,libav} libavcodec-full vlc-codecs
sudo zypper install \
	libavcodec56 \
	libavcodec57 \
	libavcodec58_134 \
	libavcodec59 \
	libavdevice56 \
	libavdevice57 \
	libavdevice58_13 \
	libavdevice59

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper addrepo https://packages.microsoft.com/yumrepos/vscode vscode
sudo zypper refresh
sudo zypper install code

# Used packages
sudo zypper install \
	gitk \
	gtest \
	gtest-debuginfo \
	SDL2-devel \
	vkbasalt \
	clang \
	ShellCheck 

