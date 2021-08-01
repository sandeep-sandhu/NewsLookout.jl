using Documenter

include("..\\src\\newslookout.jl")


makedocs(
    sitename = "NewsLookout",
    format = Documenter.HTML(),
    modules = [NewsLookout]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
# deploydocs(repo = "github.com/sandeepsandhu/newslookout.jl.git")
