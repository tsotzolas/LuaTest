--
-- Created by IntelliJ IDEA.
-- User: tsotzo
-- Date: 23/11/2017
-- Time: 11:13 μμ
-- To change this template use File | Settings | File Templates.
--

local open = io.open

local function read_file(path)
    local file = open(path, "rb") -- r read mode and b binary mode
    if not file then return nil end
    local content = file:read "*a" -- *a or *all reads the whole file
    file:close()
    return content
end


local function find_text(str)
    return string.find(str, "188.4.78.");
end

local fileContent = read_file("test.txt");

--print (fileContent);
print ("------------------------");
for line in io.lines("test.txt") do
    print(line);
end
print ("------------------------");
--print(string.sub(fileContent, find_text(fileContent)+16,23));
--print ("------------------------");
--print(string.match(fileContent,"188.4.78.196........."));

