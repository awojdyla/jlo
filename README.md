# Jlo: Julia Optics

## About
This is a a package made for the Julia language in order to process optical data.
It is inspired by [MIP (Matlab image processing)](https://github.com/awojdyla/mip), a package that I wrote for Matlab, its Python equivalent, [COPPY (Computational Optics for Python)](https://bitbucket.org/alsuboss/coppy) (it has restricted access for the moment), and to some extent by imageJ for common image manipulation (crop, zero pad, resize and rotate)

The code (ported from Matlab with little command of Julia) currently lacks many type-checks (e.g. size of matrices etc.), proper in-line documentation and error handling. Feel free to share with me he bugs you have encountered, and I'll be happy to correct them.

The name is a nod to Jennifer Lopez, a great [artist](https://www.youtube.com/watch?v=4kGvlESGvbs) and [philanthropist](https://en.wikipedia.org/wiki/Jennifer_Lopez#Philanthropy_and_activism). Be like her, donate to [Hurricane Relief](http://www.redcross.org/about-us/our-work/disaster-relief/hurricane-relief).

## Usage
```git clone https://github.com/awojdyla/jlo```

(all you need need is `Jlo.jl`, really.)

Then, add ```include(Jlo.jl)``` to your code and you're good to go!

It has been tested with Julia 0.5+ (it seems not to work properly for Julia 0.3), If things do not work, `Pkg.update()` is probably a good idea.

## Example of use
Create a gaussian
```julia
x_m = linspace(-1,1,100)
X,Y = Jlo.meshgrid(x_m,x_m)
G = Jlo.gaussian(X,0,0.1).*Jlo.gaussian(Y,0,0.1)
```
and propagate it using Fourier Optics:
```julia
Eprop = Jlo.propTF(G,100e-3,1e-6,100e-3)
```

+ ft of a sinewave
+ pinhole divergence

+ Talbot effect

`test_jlo` has many more examples of use.

## A few notes
I've implemented `ft` and `ift` function which are zero-centered Fourier Transform, following the optical conventions i(wt-kx). They come together with a`fs`, frequency scale function that creates a frequency scale from a real space scale. This is quite useful when one wants to apply filters and so on.

## To do
Some tools for easy data processing:
+ bin
+ crop
+ pad
+ resize
+ rotate
+ detrend
+ Zernike
+ zoneplates

add some sanity checks
+czt?
+bg removal

## Pipe dreams
Your help is needed! Let me know if you're interested in implementing things such as:
+ Ray tracing (implementing shadow, xrt)
+ ultra-fast optics (indices of material dispersion)
+ multilayer & polarization

## Disclaimer
THIS SOFTWARE ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
