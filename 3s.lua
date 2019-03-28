
function lreverser(source,target)
	
	--local f=io.open(target ,"r")
	
	if target~=nil  then
		io.output(target)
		--io.close(f)
	end
  
  --f=io.open(source ,"r")
  if source~=nil  then 
		io.input(source)
		--io.close(f) 
	end

	local x={}
	local i=1
	for line in io.lines() do
		x[i]=line
		i=i+1
	end
	for j=i-1, 1,-1 do
		io.write(x[j],"\n")		
	end
end

p=io.open("kota.txt","w")
r=io.open("ala.txt","r")
lreverser(r,p)