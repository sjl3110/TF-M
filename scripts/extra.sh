rm -rf cmake_build
# Select TEST_S alone, IPC model, NS = OFF, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake         \
            -DTEST_S=ON                                        \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_GNUARM_IPC_REG_Release_BL2_TESTS
cp cmake_build/bin/* AN521_GNUARM_IPC_REG_Release_BL2_TESTS
rm -rf cmake_build
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake         \
            -DTEST_S=ON                                        \
            -DNS=OFF
cmake --build cmake_build -- install -j32
cp cmake_build/bin/* AN521_GNUARM_IPC_REG_Release_BL2_TESTS
rm -rf cmake_build



# Select a S test suite, IPC model, NS = OFF, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake         \
            -DTEST_S_CRYPTO=ON                                 \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_GNUARM_IPC_REG_Release_BL2_TESTSCRYPTO
cp cmake_build/bin/* AN521_GNUARM_IPC_REG_Release_BL2_TESTSCRYPTO
rm -rf cmake_build
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake         \
            -DTEST_S_CRYPTO=ON                                 \
            -DNS=OFF
cmake --build cmake_build -- install -j32
cp cmake_build/bin/* AN521_GNUARM_IPC_REG_Release_BL2_TESTSCRYPTO
rm -rf cmake_build

# Select TEST_S alone, IPC model, NS = OFF, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S=ON                                        \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_TESTS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_TESTS
rm -rf cmake_build
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S=ON                                        \
            -DNS=OFF
cmake --build cmake_build -- install -j32
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_TESTS
rm -rf cmake_build


# Select a S test suite, IPC model, NS = OFF, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S_CRYPTO=ON                                 \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_TESTSCRYPTO
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_TESTSCRYPTO
rm -rf cmake_build
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S_CRYPTO=ON                                 \
            -DNS=OFF
cmake --build cmake_build -- install -j32
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_TESTSCRYPTO
rm -rf cmake_build