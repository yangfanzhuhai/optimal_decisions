function [ dk1, dk2 ] = gradient(x, d, T, wk, betak, lambda )
    dk1 = dfw(x, d, T, wk, betak, lambda);
    dk2 = dfbeta(x, d, T, wk, betak, lambda);
end

function [r] = dfw(x, d, T, w, beta, lambda)
    r = lambda * w;
    for t = 1 : T
        r = r + 1 / (1 + exp(-d(t) * (w * x(t) + beta))) * ...
                 exp(-d(t) * (w * x(t) + beta)) * (-d(t) * x(t));
    end
end

function [r] = dfbeta(x, d, T, w, beta, lambda)
    r = lambda * beta;
    for t = 1 : T
        r = r + 1 / (1 + exp(-d(t) * (w * x(t) + beta))) * ...
                 exp(-d(t) * (w * x(t) + beta)) * (-d(t));
    end
end