function newpoly(poly)
    return function (x)
        res = 0
        for i = 0 , #poly - 1 do
            res = res + poly[i + 1]* x ^ i
        end
        return res
    end
end

p = newpoly({3 , 0 , 1})
print(p(0))
print(p(5))
print(p(10))