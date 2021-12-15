rm -rf cmake_build
# - Select TEST_NS=ON, IPC model, NS = ON, regression test pass
# cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
#             -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
#             -DTEST_NS=ON                                        \
#             -DNS=ON
# cmake --build cmake_build -- install -j32
# mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS
# cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS
# touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS.log
# rm -rf cmake_build


# - Select TEST_NS_ATTESTATION=ON, IPC model, NS = ON, regression test pass
# cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
#             -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
#             -DTEST_NS_ATTESTATION=ON                                        \
#             -DNS=ON
# cmake --build cmake_build -- install -j32
# mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSATTESTATION
# cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSATTESTATION
# touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSATTESTATION.log
# rm -rf cmake_build

# - Select TEST_NS_QCBOR=ON, IPC model, NS = ON, regression test pass
# cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
#             -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
#             -DTEST_NS_QCBOR=ON                                        \
#             -DNS=ON
# cmake --build cmake_build -- install -j32
# mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSQCBOR
# cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSQCBOR
# touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSQCBOR.log
# rm -rf cmake_build


# - Select TEST_NS_TCOSE=ON, IPC model, NS = ON, regression test pass
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
            -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
            -DTEST_NS_T_COSE=ON                                        \
            -DNS=ON
cmake --build cmake_build -- install -j32
mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSTCOSE
cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSTCOSE
touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNSTCOSE.log
rm -rf cmake_build

# - Select TEST_NS=ON, TEST_NS_ATTESTATION=OFF, IPC model, NS = ON, regression test pass
# cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
#             -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
#             -DTEST_NS=ON                                        \
#             -DTEST_NS_ATTESTATION=OFF                               \
#             -DNS=ON
# cmake --build cmake_build -- install -j32
# mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS_TESTNSATTESTATION_OFF
# cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS_TESTNSATTESTATION_OFF
# touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS_TESTNSATTESTATION_OFF.log
# rm -rf cmake_build

# - Select TEST_NS=ON, TEST_NS_QCBOR=OFF, IPC model, NS = ON, regression test pass
# cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521         \
#             -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake         \
#             -DTEST_NS=ON                                        \
#             -DTEST_NS_QCBOR=OFF                               \
#             -DNS=ON
# cmake --build cmake_build -- install -j32
# mkdir AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS_TESTNSQCBOR_OFF
# cp cmake_build/bin/* AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS_TESTNSQCBOR_OFF
# touch AN521_ARMCLANG_IPC_REG_Release_BL2_NS_TESTNS_TESTNSQCBOR_OFF.log
# rm -rf cmake_build

