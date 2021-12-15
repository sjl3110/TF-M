Path = '/home/sjl/work/tf-m/libplatform_b'

total = 0
for line in open(Path,"r"):
    content = line.split()
    total = total + int(content[3])

print("total = %d" % total)



Path2 = '/home/sjl/work/tf-m/libplatform'

total = 0
for line in open(Path2,"r"):
    if line.find("otal") > 0:
        content = line.split()
        total = total + int(content[1])

print("total = %d" % total)