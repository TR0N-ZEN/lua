function factorial (n)
  if n == 0 then
    return 1
  else
    return n * factorial(n-1)
  end
end

print("enter a number:")
a_number = io.read("*number")
print(factorial(a_number))
