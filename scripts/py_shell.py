import subprocess


commit_sha_base = 'c855573fd1acadf2dd3b1cdc1e4581cd49c77f05'

cmake_command = 'cmake -S . -B cmake_build -DTFM_PLATFORM=arm/mps2/an521 \
                    -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake \
                    -DCMAKE_BUILD_TYPE=Release \
                    -DTFM_PROFILE=profile_small'
build_command = 'cmake --build cmake_build -- install -j32'

# p = subprocess.Popen(, shell=True,
#                      stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
# for line in p.stdout.readlines():
#     if line.find('reference is not a tree') > 0:
#         print("Python exec shell command error")
#         exit(2)

# retval = p.wait()


def sys_run(command):
    p = subprocess.Popen(command, shell=True,
                     stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    for line in p.stdout.readlines():
        print(line)
    retval = p.wait()
    return p.stdout

sys_run('git checkout ' + commit_sha_base)
sys_run('rm -rf cmake_build')
sys_run(cmake_command)
sys_run(build_command)