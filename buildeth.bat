@echo off
setlocal



if not exist "build\" mkdir "build\"

rem For CUDA 9.x pass also `-T v140`
cmake  -Bbuild -DETHASHCL=ON -DETHASHCUDA=ON -DAPICORE=ON  -DHUNTER_ENABLED=OFF -DCMAKE_TOOLCHAIN_FILE=c:/workspace/vcpkg/scripts/buildsystems/vcpkg.cmake .
cd "build\"
cmake --build .   --config Release --target package

endlocal
pause