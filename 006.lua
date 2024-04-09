
-- Every time Lua evaluates a constructor, it creates and initializes a new table.
-- Consequently, we can use tables to implement linked lists:

list = nil
for line in io.lines() do
  list = {      -- list in this line refers to the newly created table
    next=list,  -- list in this line refers to the old variable named list
    value=line
  }
end

l = list
while l do
  print(l.value)
  l = l.next
end

-- enter lines and press "ctrl" and "d" to stop io reading
