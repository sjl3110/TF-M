rm -rf cmake_build


# cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521 -DTFM_TOOLCHAIN_FILE=toolchain_ARMCLANG.cmake \
# -DTFM_LIB_MODEL=True -DTFM_ISOLATION_LEVEL=1 -DTEST_NS=False -DTEST_S=False \
# -DTEST_PSA_API=CRYPTO -DCMAKE_BUILD_TYPE=Debug -DCRYPTO_HW_ACCELERATOR_OTP_STATE=off \
# -DBL2=True -DNS=True \
# -DTFM_PARTITION_PROTECTED_STORAGE=ON
cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521                         \
            -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake                     \
            -DTEST_S=ON -DTEST_NS=ON  -DCMAKE_BUILD_TYPE=Debug  \
                # -DTFM_TEST_REPO_PATH=/home/sjl/work/tf-m-tests   \
                # -DCMAKE_BUILD_TYPE=Release                                      \

                # -DBL2=OFF
                # -DTFM_TEST_REPO_PATH=/home/sjl/work/tf-m-tests                  \
                # -DMCUBOOT_PATH=/home/sjl/work/mcuboot                           \
                # -DMBEDCRYPTO_PATH=/home/sjl/work/mbedtls                        \
                # -DEXTRA_S_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_s" \
                # -DEXTRA_NS_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_ns" \
                # -DTEST_NS=ON -DTEST_S=ON \
                # --graphviz=test.dot

                # -DTEST_S=ON -DTEST_NS=ON -DTFM_LIB_MODEL=ON
                # -DTFM_CODE_SHARING=ON -DTFM_CODE_SHARING_PATH=cmake_build/sharing
                # -DTEST_S_IPC=ON
                # -DTEST_S_ATTESTATION=ON -DNS=OFF
                # -DNS=OFF
                # -DNS=OFF
                # -DTEST_NS_IPC=ON
                # -DTEST_S_IPC=ON -DNS=OFF
                # -DTEST_S=ON
                # -DTEST_S=ON -DNS=OFF
                # -DTEST_NS=ON
                # -DTEST_S=ON -DNS=OFF
                # -DTEST_S=ON -DTEST_NS=ON
                # -DNS=OFF
                # -DTEST_S=ON 
                # -DTEST_S=ON -DTEST_NS=ON
                # -DTEST_S=ON -DNS=OFF
                # -DEXTRA_S_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_s" \
                # -DEXTRA_NS_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/extra_ns" \
                # -DEXTRA_S_TEST_SUITES_PATHS="/home/sjl/work/tf-m-extras/examples/extra_test_suites/platform_s" \
                # -DTEST_S_ATTESTATION=ON -DTEST_NS_ATTESTATION=ON
                # -DTEST_EXTRA_SUITES_PATHS="/home/sjl/work/test-suites-oot/attestation;/home/sjl/work/test-suites-oot/platform" \
                # -DTFM_PARTITION_INITIAL_ATTESTATION=OFF -DTEST_S_ATTESTATION=ON
                # -DTEST_S=ON -DNS=OFF
                # -DTEST_NS_PS=OFF                    \
                # -DTEST_NS_ATTESTATION=OFF           \
                # -DTEST_NS_AUDIT=OFF                 \
                # -DTEST_NS_CORE=OFF                  \
                # -DTEST_NS_CRYPTO=OFF                \
                # -DTEST_NS_ITS=OFF                   \
                # -DTEST_NS_QCBOR=OFF                 \
                # -DTEST_NS_T_COSE=OFF                \
                # -DTEST_NS_PLATFORM=OFF              \
                # -DTEST_NS_FWU=OFF                   \
                # -DTEST_NS_IPC=OFF                   \
                # -DTEST_NS_MULTI_CORE=OFF            \
                # -DTEST_S_ATTESTATION=OFF            \
                # -DTEST_S_AUDIT=OFF                  \
                # -DTEST_S_CRYPTO=OFF                 \
                # -DTEST_S_ITS=OFF                    \
                # -DTEST_S_PS=OFF                     \
                # -DTEST_S_PLATFORM=OFF               \
                # -DTEST_S_FWU=OFF                    \

                # -DTEST_S=OFF -DTEST_NS=OFF 


cmake --build cmake_build -- install -j32
# VERBOSE=1


# cd cmake_build
# srec_cat ./bin/bl2.bin -Binary -offset 0xA000000 -fill 0xFF 0xA000000 0xA020000 ./bin/tfm_s_ns_signed.bin -Binary -offset 0xA020000 -fill 0xFF 0xA020000 0xA200000 -o ./bin/tfm.hex -Intel
# cd ..
