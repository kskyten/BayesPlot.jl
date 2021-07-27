module BayesPlot
using Makie

function mcmc_recover_hist(posterior, true_parameters; kwargs...)
end

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
end

function ppc_stat(y, yrep; kwargs...)
end

function ppc_intervals(y, yrep; kwargs...)
end

function ppc_stat_grouped(y, yrep; kwargs...)
end

function mcmc_hist(x; kwargs...)
end

function mcmc_trace(x; kwargs...)
end

function mcmc_scatter(x; kwargs...)
end

function mcmc_parcoord(x; kwargs...)
end

function mcmc_areas(x; kwargs...)
end

end
