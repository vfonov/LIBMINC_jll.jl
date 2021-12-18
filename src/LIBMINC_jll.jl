# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LIBMINC_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("LIBMINC")
JLLWrappers.@generate_main_file("LIBMINC", UUID("e365f29a-713b-59c4-b64a-7ac3c1ec6045"))
end  # module LIBMINC_jll
