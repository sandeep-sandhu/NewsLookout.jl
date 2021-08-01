using Test

using NewsLookout


@test NewsLookout.greet() == "-- The NewsLookout Web Scraping App ---"

@test [1, 2] + [2, 1] == [3, 3]
