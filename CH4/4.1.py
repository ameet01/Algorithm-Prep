# Computing The Parity of A Word

def parity(x):
    result = 0
    while(x):
        result ^= x & 1
        x = x >> 1
   
    return result

print(parity(333))