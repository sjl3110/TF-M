rm -rf cmake_build
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/musca_b1/sse_200 \
-DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake \
-DTFM_LIB_MODEL=True -DTFM_ISOLATION_LEVEL=1 -DTEST_NS=True -DTEST_S=True -DTEST_PSA_API=OFF \
-DCMAKE_BUILD_TYPE=Minsizerel -DCRYPTO_HW_ACCELERATOR_OTP_STATE=off -DBL2=True -DNS=True \
-DTFM_PARTITION_PROTECTED_STORAGE=ON -DTFM_NS_MANAGE_NSID=OFF -DPSA_FRAMEWORK_HAS_MM_IOVEC=OFF
cmake --build cmake_build -- install -j32

cd cmake build
srec_cat ./bin/bl2.bin -Binary -offset 0xA000000 -fill 0xFF 0xA000000 0xA020000 ./bin/tfm_s_ns_signed.bin -Binary -offset 0xA020000 -fill 0xFF 0xA020000 0xA200000 -o ./bin/tfm.hex -Intel
cd ..