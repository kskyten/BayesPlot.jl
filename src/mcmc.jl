function mcmc_recover_hist(posterior, true_parameters; kwargs...)
end

function mcmc_hist(x; kwargs...)
end

function mcmc_trace(x; kwargs...)
end

function mcmc_scatter(x; kwargs...)
end

function mcmc_parcoord(x; kwargs...)
    series!(nondiverging, solid_color=(:grey, 0.3))
    series!(diverging, solid_color=(:blue, 0.3))
end

function mcmc_areas(x; kwargs...)
end
