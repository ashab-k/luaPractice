
function readFile(...)
    local args = { ... }
    local n = select("#", ...)
    local lines = {}
    if n == 0 then
        for line in io.lines() do
            lines[#lines + 1] = line
        end
        table.sort(lines)
        for _ , line in ipairs(lines) do
            io.write(line , "\n")
        end

    elseif n == 1 then
        local file, err = io.open(args[1], "r")
        if not file then
            error(err)
        end

        for line in file:lines() do
            lines[#lines + 1] = line
        end
        table.sort(lines)
        for _ , v in ipairs(lines) do
            io.write(v, "\n")
        end
        file:close()

    elseif n == 2 then
        local file1, err1 = io.open(args[1], "r")
        if not file1 then
            error(err1)
        end

        local file2, err2 = io.open(args[2], "w")
        if not file2 then
            file1:close()
            error(err2)
        end

        for line in file1:lines() do
            lines[#lines + 1] = line
        end
        table.sort(lines)
        for _ ,line in ipairs(lines) do
            file2:write(line , "\n")
        end

        file1:close()
        file2:close()
    end
end

readFile("read.txt")
readFile("read.txt" , "write.txt")