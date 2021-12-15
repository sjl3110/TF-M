rm -rf cmake_build

# ARMCLANG
# Select TEST_NS alone, IPC model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_NS=ON                                        \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS.log
rm -rf cmake_build

# Select TEST_NS alone, IPC model, NS = OFF, build shall succeed
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_NS=ON                                        \
            -DNS=OFF
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_TESTNS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_TESTNS
touch AN521_ARMCLANG_IPC_REG_Release_BL2_TESTNS.log
rm -rf cmake_build

# Select TEST_S alone, IPC model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S=ON                                        \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTS
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTS.log
rm -rf cmake_build

# Select TEST_S alone, Library model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S=ON                                         \
            -DTFM_LIB_MODEL=ON                                  \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_LIB_REG_Release_BL2_NS_TESTS
cp cmake_build/bin/* AN521_ARMCLANG_LIB_REG_Release_BL2_NS_TESTS
touch AN521_ARMCLANG_LIB_REG_Release_BL2_NS_TESTS.log
rm -rf cmake_build

# Select a NS test suite, IPC model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_NS_CRYPTO=ON                                 \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSCRYPTO
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSCRYPTO
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSCRYPTO.log
rm -rf cmake_build

# Select ITS NS test suite, Library model, NS = OFF, build shall succeed
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_NS_ITS=ON                                     \
            -DTFM_LIB_MODEL=ON                                  \
            -DNS=OFF
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_LIB_REG_Release_BL2_TESTNSITS
cp cmake_build/bin/* AN521_ARMCLANG_LIB_REG_Release_BL2_TESTNSITS
touch AN521_ARMCLANG_LIB_REG_Release_BL2_TESTNSITS.log
rm -rf cmake_build

# Select a S test suite, IPC model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S_CRYPTO=ON                                 \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTSCRYPTO
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTSCRYPTO
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTSCRYPTO.log
rm -rf cmake_build



# Select a NS test suite and a S test suite, IPC model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S_CRYPTO=ON -DTEST_NS_ITS=ON                 \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTSCRYPTO_TESTNSITS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTSCRYPTO_TESTNSITS
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTSCRYPTO_TESTNSITS.log
rm -rf cmake_build

# Select IPC NS test suite and a S test suite, IPC model, NS = OFF, build shall pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_S_CRYPTO=ON -DTEST_NS_ITS=ON                 \
            -DNS=OFF
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_TESTSCRYPTO_TESTNSITS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_TESTSCRYPTO_TESTNSITS
touch AN521_ARMCLANG_IPC_REG_Release_BL2_TESTSCRYPTO_TESTNSITS.log
rm -rf cmake_build

# Select a NS test suite and a S test suite, Library model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_NS_QCBOR=ON -DTEST_S_ITS=ON                 \
            -DTFM_LIB_MODEL=ON                                  \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_LIB_REG_Release_BL2_NS_TESTNSQCBOR_TESTSITS
cp cmake_build/bin/* AN521_ARMCLANG_LIB_REG_Release_BL2_NS_TESTNSQCBOR_TESTSITS
touch AN521_ARMCLANG_LIB_REG_Release_BL2_NS_TESTNSQCBOR_TESTSITS.log
rm -rf cmake_build
