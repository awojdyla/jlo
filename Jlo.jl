module Jlo

function test()
    print("test")
end

function gaussian(x_px, mean_px, stdev_px)
    exp(-((x_px-mean_px)/(2*stdev_px)).^2)
end

#image has to be square
function propTF(E0, L_m, lambda_m, z_m)
    fx=Jlo.fs(linspace(0,L_m,size(E0,1)))
    Fx, Fy =  Jlo.meshgrid(fx,fx)
    H = exp((-im)*pi*lambda_m*z_m*(Fx.^2+Fy.^2))
    E_prop = Jlo.ft(H.*Jlo.ift(E0))
    return E_prop
end

function propIR
end

function propHF
end

function crop
end

function pad
end

function fs(t)
    ff = 1/(t[end]-t[1])
    Nf = length(t)
    df =   ff./Nf
    f = (0:df:(ff-df)) - (ff-mod(Nf,2)*df)/2

    return f
end

function ft(x)
    y = fftshift(ifft(ifftshift(x)))
    return y
end

"centered fourier transform"
function ift(x)
    y = fftshift(fft(ifftshift(x)))
    return y
end


function meshgrid(vx, vy)
    m, n = length(vy), length(vx)
    vx = reshape(vx, 1, n)
    vy = reshape(vy, m, 1)
    (repmat(vx, m, 1), repmat(vy, 1, n))
end


end
