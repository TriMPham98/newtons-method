function iterFunc(x)
    return x - (x^3 + x - 1) / (3*x^2 + 1)
end

oldEst = 0
tol = 0.00005

error = 1

while (error > tol) do
    newEst = iterFunc(oldEst)
    print(newEst)
    error = math.abs(newEst - oldEst)
    oldEst = newEst
end