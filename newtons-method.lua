function iterFunc(x)
    return x - (-x^4 + 3*x^2 + 2) / (-4*x^3+6*x)
end

oldEst = 1
tol = 0.000000005
n = 0
nmax = 50

error = 1

while (error > tol and n < nmax) do
    newEst = iterFunc(oldEst)
    print(newEst)
    error = math.abs(newEst - oldEst)
    oldEst = newEst
    n = n + 1
end