
  function unpack (t, i)
      i = i or 1
      if t[i] ~= nil then
        return t[i], unpack(t, i + 1)
      end
  end
    
  function zip(...)
    local x = {}
    local y = {}
    local min = 0
    local i = 1
    local j = 1
    local size = select("#",...)
    
    for i = 1, size do
        x[#x+1] = select(i,...)
        if i == 1 then min = #x[1] end
        if min > #x[i] then min = #x[i] end 
    end
    
    return function ()
      while i <= min do
        while j <= size do
          j = j+1
          y[j-1] = x[j-1][i]
        end
        i = i+1
        j = 1
        return unpack(y)  
      end
    end
    
  end
  
  function chain(...)
    local x = {}
    
    for i = 1, select("#",...) do
        x[#x+1] = select(i,...)
    end
    
    local i = 1
    local j = 1
    return function ()
      while x[i] do
        while x[i][j] do
          j = j+1
          return x[i][j-1]
        end
        j = 1
        i = i+1
      end
    end
    
  end
  
  for x in  chain({'a', 'b', 'c'}, {40, 50}, {}, {6, 7}) do
    print (x)
  end
  
  print()
  
  for x, y, z in zip({'a', 'b', 'c', 'd'}, {40, 50, 60},{1,2,3}) do
    print (x, y, z)
  end