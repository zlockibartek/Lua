
function dividers(n)
  
  str={}
  pom={}
  
  for i=2, n do
    pom[i]=true
  end
  
  for i = 2, n do
    if pom[i] then
     w=i*i
      while (w<=n) do
        pom[w] = false
        w=w+i;
      end
    end
  end
  
  for i = 1 ,#pom do
    if pom[i] then
      if n%i==0 then
      str[#str+1]=i
      end
    end
  end
  
  return str
end

function fib(n)
  if n==0 then return 1 end
  if n==1 then return 1 end
  return fib(n-1)+fib(n-2)
end
  
function max(s)
  maks=s[1]
  for i=2, #s do
    if s[i]>maks then
      maks=s[i]
    end
  end
  return maks
end

x=dividers(30)

for i=1, #x do
  print(x[i])
end

print(fib(10))

print(max(x))