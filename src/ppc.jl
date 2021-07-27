using Statistics

function ppc_dens_overlay(y, yrep; kwargs...)
    f = Figure()
    Axis(f[1, 1])
    density!(y, color=:transparent, strokecolor = :black, strokewidth=2)

    for yr in yrep
        density!(yr, color=:transparent, strokecolor=(:blue, 0.1), strokewidth=1)
    end

    return f
end

function ppc_rootogram(y, yrep; kwargs...)
    f = Figure()
    Axis(f[1, 1])
    hist!(y)

    return f
end

function ppc_stat(y, yrep; kwargs...)
    f = Figure()
    Axis(f[1, 1])
    fun = get(kwargs, :stat, mean)
    hist!(fun.(yrep))

    return f
end

function ppc_intervals(y, yrep; kwargs...)
end

function ppc_stat_grouped(y, yrep; kwargs...)
end
