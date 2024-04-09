-- tables are the only data structuring mechanism in lua

a = {}
b = { "f", "g", "d"}
print(b[1]) --> will print f
c = { a="f", b="d", "g" }
d = { a="f", b="d", "g", "c" }


-- read 10 lines storing them in a table
for i=1,10 do
  a[i] = io.read()
end

-- print the lines
for i,line in ipairs(a) do
  print(line)
end
