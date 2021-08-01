using Test

include("..\\src\\newslookout.jl")

@test NewsLookout.greet() == "-- the NewsLookout Web Scraping App ---"

@test [1, 2] + [2, 1] == [3, 3]
