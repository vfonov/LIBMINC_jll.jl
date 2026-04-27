# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libminc_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libminc")
JLLWrappers.@generate_main_file("libminc", Base.UUID("dce2f2bf-0ed4-5a0e-8af7-a90b827a9344"))
end  # module libminc_jll
