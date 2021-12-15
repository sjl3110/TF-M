Path = '/home/sjl/work/tf-m/result'
func =[]
obj = []

def get_dict(key_word):
    ret = []
    total = 0
    for line in open(Path,"r"):
        if line.find(key_word) > 0:
            content = line.split()
            if len(content) == 8:
                total = total + int(content[2])
                ret.append({'name': content[7], 'size':int(content[2])})
    ret = sorted(ret, key=lambda i: i['size'])
    # for s in ret:
    #     print(str(s['size']) + '\t' + s['name'])
    print(key_word +'\t'+ str(total))
    # return ret, total

def sum_size():
    ret = 0
    for line in open(Path,"r"):
        content = line.split()
        ret = ret + int(content[2])
    return ret

get_dict('SECTION')
get_dict('FUNC')
get_dict('NOTYPE')
get_dict('FILE')
get_dict('OBJECT')
print("sum = %d" % sum_size())
# ➜  tf-m git:(master) ✗ size -B cmake_build/bin/tfm_s.elf
#    text    data     bss     dec     hex filename
#  206216    1476   78176  285868   45cac cmake_build/bin/tfm_s.elf
