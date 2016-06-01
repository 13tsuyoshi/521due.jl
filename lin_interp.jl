function my_lin_interp(grid,vals)
    function func(x::Real)
            lower_index = searchsortedlast(grid,x)
            if lower_index == 0  
            return "$x is external to grid ! It's too small."
            elseif lower_index == length(grid)
            return "$x is external to grid ! It's too big."
            else
                y_value =  (vals[lower_index+1] - vals[lower_index]) * (x - grid[lower_index]) /
                 (grid[lower_index+1] - grid[lower_index])  + vals[lower_index]
                return y_value
            end
        end
    
    function func{T<:Real}(x::AbstractVector{T})
        n = length(x)
        out = Array(Any, n)
        for i in 1 : n
                out[i] = func(x[i])
        end
        return out
    end
    
    return func
end
