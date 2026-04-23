set echo on

mkdir -p ../bin

cFileNames=$(find . -type f -name "*.c")
assembly="engine"
CFlags="-g -fPIC -fdeclspec"
IFlags="-Isrc -I$VULKAN_SDK/include"
LFlags="-lvulkan -lxcb -lX11 -lX11-xcb -lxkbcommon -L$VULKAN_SDK/lib -L/usr/usr/X11R6/lib"
defines="-D_DEBUG -DKEXPORT"

echo "Building $assembly"
echo "clang $cFileNames $CFlags -o ../bin/lib$assembly.so $defines $IFlags $LFlags"
clang $cFileNames $CFlags -o ../bin/lib$assembly.so $defines $IFlags $LFlags