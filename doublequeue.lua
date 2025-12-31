function listNew()
    return {first = 0 , last = 0}
end

function pushFirst( list , value)
     local first = list.first - 1
     list.first = first
     list[first] = value
end

function pushLast (list , value)
 local last = list.last + 1
 list.last = last
 list[last] = value
end

function popFirst(list)
 if list.first > list.last  then error("list is empty") end
 local first = list.first
 local value = list[first]
 list[first] = nil
 list.first = first + 1
 while list[list.first] == nil and list.first <= list.last do 
    list.first = list.first + 1
 end

 if list.first > list.last then 
    list.first = 0 
    list.last = 0
 end
 return value
end

function popLast (list)
 if list.first > list.last then error("list is empty") end
 local last = list.last
 
 local value = list[last]
 list[last] = nil
 list.last = last - 1

 while list[list.last] == nil and list.last >= list.first do 
    list.last = list.last - 1
 end

 if list.first > list.last then 
    list.first = 0
    list.last = 0
 end
 return value
end

list = listNew()
pushFirst(list , 5)
pushLast(list , 6)
pushLast(list , 7)

print(popLast(list))
print(popFirst(list))
print(popFirst(list))
print(list.first , list.last)


