poly = { 1 , 2 , 3 }

res = 0
x = 2

for i = 0 , #poly - 1 do
    res = res + poly[i+1] * (x ^ i)
end

print(res)