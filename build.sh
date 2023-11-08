#########################################################################
# File Name: build.sh
# Author: huangwei
# mail: 1026856341@qq.com
# Created Time: 三 11/ 8 14:47:37 2023
#########################################################################
#!/bin/bash
ninja -C build clean
ninja -C build
sudo cp ./build/meson-out/libui.A.dylib /usr/local/lib
