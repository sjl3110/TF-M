rm -rf cmake_build

# ARMCLANG
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DEXTRA_S_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_s"
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_S
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_S
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_S.log
rm -rf cmake_build

cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DEXTRA_NS_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_ns"
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_NS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_NS
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_NS.log
rm -rf cmake_build

cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DEXTRA_S_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_s"\
            -DEXTRA_NS_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_ns"
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_S_NS
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_S_NS
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_EXTRA_S_NS.log
rm -rf cmake_build