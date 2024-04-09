-- If the function has one single argument and
-- this argument is either a literal string or a table constructor

print 'Hello world'
type {}

print [[multiline
  message]]

function add (a)
  local sum = 0
  for i,v in ipairs(a) do
    sum = sum + v
  end
end

-- Lua adjusts the number of arguments to the number of parameters,
-- as it does in a multiple assignment:
-- Extra arguments are thrown away; extra parameters get nil.

-- When you call incCount(), Lua first initializes n with nil;
-- the or results in its second operand; and as a result Lua assigns a default 1 to n. 
function incCount (n)
  n = n or 1
  count = count + n
end

-- unctions may return multiple results
s, e = string.find("hello Lua users", "Lua")
print(s, e)


a = { string.find("hello Lua users", "Lua") }
print(a[1], a[2])

x = { "hello Lua users", "Lua" }
e, s = string.find(table.unpack(x))
print(e, s)

-- functions can access variables of its enclosing functions (called "lexical scoping")
-- expression function (x) ... end as a function constructor,
-- just as {} is a table constructor.
-- We call the result of such function constructors
-- an "anonymous function"

network = {
  {name = "grauna",  IP = "210.26.30.34"},
  {name = "arraial", IP = "210.26.30.23"},
  {name = "lua",     IP = "210.26.23.12"},
  {name = "derain",  IP = "210.26.23.20"},
}

-- If we want to sort the table by the field name,
-- in alphabetical order, we just write:

table.sort(network, function (a,b)
  return (a.name < b.name)
end)

for i,v in ipairs(network) do
  print(v.name)
end


