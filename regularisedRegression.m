function [ r ] = regularisedRegression(x, d, T, w, beta, lambda )
    r = lambda / 2 * (beta ^ 2 + w ^ 2 );
    for t = 1 : T
        r = r + log(1 + exp(-d(t) * (w * x(t) + beta)));
    end
end