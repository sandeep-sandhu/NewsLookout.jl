module NewsLookout

using ArgParse
using Dates
using Logging



function parse_commandline()
    s = ArgParseSettings()

    @add_arg_table! s begin
        "--conf", "-c"
            help = "Configuration file name"
			arg_type = String
			default = "conf/file1.conf"
        "--rundate", "-d"
            help = "Run-date to extract data"
            arg_type = String
            default = Dates.format(Dates.now(), "yyyy-mm-dd")
    end

    return parse_args(s)
end


function set_logger(io::IOStream)
	logger = Logging.SimpleLogger(io)
	with_logger(logger) do
           @info("Started logging.")
    end
	flush(io)
	Logging.global_logger(logger)
end

function greet()
	return("-- The NewsLookout Web Scraping App ---")
end


function print_usage()
	println("Usage: newslookout.jl --conf <configfile> -rundate <run date>")
end


function julia_main()
	println(greet())
	# start logger
	io = open("logfile.txt", "w+")
	set_logger(io)
	
    parsed_args = parse_commandline()
    println("Parsed args:")
    for (arg,val) in parsed_args
        println("\t$arg  =>  $val")
    end
	
	# close logger
	close(io)
end


function __init__()

end

if !isdefined(Base, :active_repl)
    julia_main()
end

end # module
