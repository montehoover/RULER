import json

''''
THIS IS SCRATCH WORK SAVED ONLY FOR THE PURPOSES OF COMING BACK AND SHOWING HOW WE GOT NUMS

DIDNT EVEN CODE IT HERE LMAO DID IT ONLINE VIA PROGRAMIZ

'''

print(128 * 32)

maxarr = []
maxidx = -1
for i in range(1, 11):
    arr = [2]
    
    for _ in range(31):
        arr.append(arr[-1] + i)
    print(f'IDX: {i}, ARR: {arr}, AVG: {sum(arr)/32}')
    
    if sum(arr) / 32 > 128:
        break
    maxarr = arr
    maxidx = i
    
print(maxidx, len(maxarr), sum(maxarr))
print(f'ADD {4096 - sum(maxarr)} TO THE LAST LAYER')

range_arr = []
for idx, val in enumerate(maxarr):
    range_arr.append([idx, idx + 1, val])
    
print(f'PUT THE FOLLOWING INTO THE RANGE \n {range_arr}')


arr = [4]

for _ in range(31):
    arr.append(arr[-1] + 8)
print(f'IDX: 8, ARR: {arr}, AVG: {sum(arr)/32}')
test = '[[0, 1, 2], [1, 2, 10], [2, 3, 18], [3, 4, 26], [4, 5, 34], [5, 6, 42], [6, 7, 50], [7, 8, 58], [8, 9, 66], [9, 10, 74], [10, 11, 82], [11, 12, 90], [12, 13, 98], [13, 14, 106], [14, 15, 114], [15, 16, 122], [16, 17, 130], [17, 18, 138], [18, 19, 146], [19, 20, 154], [20, 21, 162], [21, 22, 170], [22, 23, 178], [23, 24, 186], [24, 25, 194], [25, 26, 202], [26, 27, 210], [27, 28, 218], [28, 29, 226], [29, 30, 234], [30, 31, 242], [31, 32, 250]]'
print(f'{type(json.loads(test))}')
new_range = []
for idx, val in enumerate(arr):
    new_range.append([idx, idx + 1, val])
print(f'NEW RANGE: \n {new_range}')

'''for a later experiment btw'''

maxarr = []
maxidx = -1
for i in range(1, 11):
    arr = [8]
    
    for _ in range(15):
        arr.append(arr[-1] + i)
    print(f'IDX: {i}, ARR: {arr}, AVG: {sum(arr)/32}')
    
    if sum(arr) > 1280:
        break
    maxarr = arr
    maxidx = i
print(maxidx, len(maxarr), sum(maxarr))
maxarr = [i + 4 for i in maxarr]
print(f'NEW MAXARR: {maxarr}, ADD {1280- sum(maxarr)} TO LAST LAYER')
maxarr = [i + 128 for i in maxarr]
range_arr = []
for idx, val in enumerate(maxarr):
    range_arr.append([idx+16, idx+17,val])
print(f'FINAL ARR:{range_arr}')

temp = sum(maxarr) + 8 + (64*8 + 32*8)
print(temp)
trial = [[16,17,140],[17,18,150],[18,19,158],[19,20,168],[20,21,176],[21,22,186],[22,23,194],[23,24,204],[24,25,212],[25,26,222],[26,27,230],[27,28,240],[28,29,248],[29,30,258],[30,31,266],[31,32,276]]
numm = sum([i[2] for i in trial]) + (64*8 + 32*8)
trial_two = '[[16,17,140],[17,18,150],[18,19,158],[19,20,168],[20,21,176],[21,22,186],[22,23,194],[23,24,204],[24,25,212],[25,26,222],[26,27,230],[27,28,240],[28,29,248],[29,30,258],[30,31,266],[31,32,276]]'
print(numm)
print(f'JSON TRIAL: {json.loads(trial_two), type(json.loads(trial_two))}')