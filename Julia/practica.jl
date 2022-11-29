
function arrayGen(n, components, length)
    arrays = []
    for i in 1:n
        push!(arrays, [rand(0:length) for _ in 1:components])
    end
    print(arrays)
    return arrays
end

function dotProduct(colection)
    ext = length(colection[1])
    tosum = []
    for i in 1:ext
        append!(tosum, 1)
        for t in colection
            tosum[i] = tosum[i] * t[i]
        end
    end
    return sum(tosum)
end

print(dotProduct(arrayGen(2,3,10)))
