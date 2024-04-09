function Norm (x, y)
  local n2 = x^2 + y^2
  return math.sqrt(n2)
end

function Twice (x)
  return x*2
end

-- start lua in interactive mode and
-- load the code inside this file and
-- execute the loaded functions
-- like so:
-- $ lua
-- Lua 5.4.6  Copyright (C) 1994-2023 Lua.org, PUC-Rio
-- > dofile("003.lua")
-- > n = Norm(3.4, 1.0)
-- > print(Twice(n))
-- 7.0880180586677
