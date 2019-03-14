function moveinto(tab1,i1,j1,tab2,i2)
  
  if type(tab2)~='table' then
    
    local i2=tab2
    local tab2=tab1
    local h=j1-i1+1+i2
    local size=#tab2
    local i3=i2+j1-i1
    
    for i=0,size-i2 do
      tab1[h]=tab1[i2]
      i2=i2+1
      h=h+1
    end
    
    for j=j1 ,i1,-1 do
      tab1[i3]=tab2[j]
      i3=i3-1
    end
end

  if type(tab2)=='table' then
    local h=j1-i1+1+i2
    local size=#tab2
    local i3=i2+j1-i1
    
      for i=0,size-i2 do
        tab2[h]=tab2[i2]
        i2=i2+1
        h=h+1
      end

      for j=j1 ,i1,-1 do
        tab2[i3]=tab1[j]
        i3=i3-1
      end
    end
end

tab1 = {3, 4, nil,6, 7}
tab2 = {1, nil , 3, 7, nil , 8}
moveinto (tab1, 2, 4,tab2, 4)
for i=1,#tab2 do
  print(tab2[i])
end--]]