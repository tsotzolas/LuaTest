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
--print(string.find(fileContent, "188.4.78.196"));
print ("------------------------");
print(string.sub(fileContent, find_text(fileContent)+16,23));
print ("------------------------");
--print(string.match(fileContent,"188.4.78.196........."));

