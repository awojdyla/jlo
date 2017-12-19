# Jlo: Julia Optics

## About
This is a a package made for the Julia language in order to process optical data.
It is inspired by MIP (Matlab image processing), a package that I wrote for Matlab (github.com/awojdyla/mip) and its Python equivalent, COPPY (Computational Optics for Python) github.com/awojdyla/coppy, and to some extent by imageJ.


The code (ported from Matlab with little command of Julia) currently lacks many error check (e.g. size of matrices etc.) and proper in-line documentation. Feel free to share with me he bugs you have encountered, and I'll be happy to correct them.

## Usage
```git clone https://github.com/awojdyla/jlo```.

(all you need need is `Jlo.jl`, really.)

Then, add ```include(Jlo.jl)``` to your code and you're good to go!

It has been tested with Julia 0.5+ (it seems not to work properly for Julia 0.3), If things do not work, `Pkg.update()` is probably a good idea.

## Example of use
Create a gaussian
X,Y = Jlo.meshgrid(x,x)
```G = Jlo.gaussian(X,0,0.1).*Jlo.gaussian(Y,0,0.1)```
Propagate using Fourier Optics
```Eprop = Jlo.propTF(G,100e-3,1e-6,100e-3)```

ft of a sinewave
pinhole divergence

## A few notes
I've implemented `ft` and `ift` function which are zero-centered Fourier Transform, following the optical conventions i(wt-kx). They come together with a`fs`, frequency scale function that creates a frequency scale from a real space scale. This is quite useful when one wants to apply filters and so on.

## To do
Some tools for easy data processing:
bin
crop
pad
resize
rotate
detrend

some sanity checks

czt?
bg removal

A bunch of examples
propagation
lens
talbot effect
wavefront sensing

[display polarization]
[polarization/ rotation matrix]

getting help?
