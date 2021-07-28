using Statistics
using Makie

function ppc_dens_overlay(y, yrep; kwargs...)
    f = Figure()
    Axis(f[1, 1])
    Makie.density!(y, color=:transparent, strokecolor = :black, strokewidth=2)

    for yr in yrep
        Makie.density!(yr, color=:transparent, strokecolor=(:blue, 0.1), strokewidth=1)
    end

    return f
end

function ppc_rootogram(y, yrep; prob=0.9, kwargs...)
    alpha = (1 - prob) / 2
    probs = [alpha, 1 - alpha]
    ymax = maximum([y; flatten(yrep)])

    f = Figure()
    Axis(f[1, 1])
    hist!(y)

    return f
end

function ppc_stat(y, yrep; kwargs...)
    fun = get(kwargs, :stat, mean)
    fig, ax, po = hist(fun.(yrep))
    vlines!(ax, [fun(y)], color=:black, linewidth=3)

    return fig
end

function ppc_intervals(y, yrep; kwargs...)
end

function ppc_stat_grouped(y, yrep; kwargs...)
end
