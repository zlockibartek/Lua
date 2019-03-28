
path = [[K:/hidden-name/Teaching/2016_Lua/[Lab]/Lecture 04.pdf]]
check={}
var="\\"
check[1],check[2]=string.match(path, "([^\\]+)%.(.+)$")
for i=1,#check do
  print(check[i])
end
function unpath(path)
  local separator=package.config:sub(1,1)
  local pom={}
  local word={}
  for w in string.gmatch(path,"([^"..separator.."]+)("..separator..")") do
    pom[#pom+1]=w
  end
  word[1],word[2]=string.match(path, "([^"..separator.."]+)%.(.+)$")
  pom[#pom+1]=word[1]
  pom[#pom+1]=word[2]
  return pom
end
tab={}
tab=unpath(path)
for i=1,#tab do
  print(tab[i])
end
