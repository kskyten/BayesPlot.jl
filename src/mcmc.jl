using AlgebraOfGraphics
const AOG = AlgebraOfGraphics

function mcmc_recover_hist(posterior, true_parameters; kwargs...)
end

function mcmc_hist(x; kwargs...)
end

# https://github.com/TuringLang/MCMCChains.jl/issues/306#issuecomment-860698289
function mcmc_trace(chain; kwargs...)
    # exclude additional information such as log probability
    params = names(chain, :parameters)
    chain_mapping = mapping(params .=> "sample value") *
        mapping(; color=:chain => nonnumeric, row=dims(1) => renamer(params))
    plt1 = data(chain) * mapping(:iteration) * chain_mapping * visual(Lines)
    plt2 = data(chain) * chain_mapping * AOG.density()
    fig = Figure(; resolution=(800, 600))
    draw!(fig[1, 1], plt1)
    draw!(fig[1, 2], plt2; axis=(ylabel="density",))

    return fig
end

function mcmc_scatter(x; kwargs...)
end

function mcmc_parcoord(x; kwargs...)
    series!(nondiverging, solid_color=(:grey, 0.3))
    series!(diverging, solid_color=(:blue, 0.3))
end

function mcmc_areas(x; kwargs...)
end
