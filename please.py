def linear(start_val, maximum=4096):
    max_arr = []
    excess = 0
    
    for i in range (4, 11):
        local_arr = [start_val]
        
        for _ in range(31):
            local_arr.append(local_arr[-1] + i)
        
        if sum(local_arr) > maximum:
            break
        #print(local_arr, sum(local_arr))
        max_arr = local_arr
        excess = maximum - sum(local_arr)
    
    max_arr[-1] += excess
    #print("max arr", max_arr)
    
    range_arr=[]
    
    for idx, val in enumerate(max_arr):
        
        range_arr.append([idx, idx+1, val])
    return range_arr
    
print(linear(2, 4096))

        