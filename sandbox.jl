

Pkg.add("Gadfly")
using Gadfly

include("Jlo.jl")

x = linspace(-1,1,100)
g = Jlo.gaussian(x,0,1)

f0 = 1
y = sin(2*pi*f0*x)
plot(x=x,y=y)


plot(x = fs(x), y =abs(ft(y)))
