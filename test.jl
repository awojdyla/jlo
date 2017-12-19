Pkg.add("Gadfly")
using Gadfly
include("Jlo.jl")

x = linspace(-1,1,100)
g = Jlo.gaussian(x,0,1)

X,Y = Jlo.meshgrid(x,x)
G = Jlo.gaussian(X,0,0.1).*Jlo.gaussian(Y,0,0.1)

E0 = G
L_m = 10e-6
lambda_m = 1e-6
z_m = 30e-3
Eprop = Jlo.propTF(E0,L_m,lambda_m,z_m)
spy(abs(Eprop))
