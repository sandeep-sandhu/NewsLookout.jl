using Test

using NewsLookout

println(readdir("/home/runner/work/NewsLookout.jl/"))


@test NewsLookout.greet() == "-- The NewsLookout Web Scraping App ---"

@test [1, 2] + [2, 1] == [3, 3]
