io.input("cos.txt")
io.output("przyklad.txt")

local start=io.input():seek()
local x=os.clock();

for line in io.lines() do
io.write(line)
end

print("time of writing by lines: ",os.clock()-x)
io.input():seek('set',start)
io.output():close()
io.output("przyklad.txt")
x=os.clock()

io.write(io.read(),1)

print("time of writing by bytes: ",os.clock()-x)
io.input():seek('set',start)
io.output():close()
io.output("przyklad.txt")
x=os.clock()

for block in io.input():lines(2^13) do
io.write(block)
end

print("time of writing by 8KB blocks: ",os.clock()-x)
io.input():seek('set',start)
io.output():close()
io.output("przyklad.txt")
x=os.clock()

io.write(io.read(),"a")

print("time of writing by file: ",os.clock()-x)
io.input():seek('set',start)
x=os.clock()

io.input():close()
io.output():close()
