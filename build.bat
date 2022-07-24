@echo off
echo building...
cargo build --release
echo clean dist dir.
rd /s /q dist
mkdir dist
echo copy release exe.
copy target\release\wyhash.exe dist\wyhash.exe
echo upx packing...
upx dist\wyhash.exe
echo done.