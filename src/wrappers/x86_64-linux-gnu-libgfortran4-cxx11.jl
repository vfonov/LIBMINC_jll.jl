# Autogenerated wrapper script for LIBMINC_jll for x86_64-linux-gnu-libgfortran4-cxx11
export libminc2, libminc2_simple

using HDF5_jll
using NetCDF_jll
JLLWrappers.@generate_wrapper_header("LIBMINC")
JLLWrappers.@declare_library_product(libminc2, "libminc2.so.5.3.0")
JLLWrappers.@declare_library_product(libminc2_simple, "libminc2-simple.so")
function __init__()
    JLLWrappers.@generate_init_header(HDF5_jll, NetCDF_jll)
    JLLWrappers.@init_library_product(
        libminc2,
        "lib/libminc2.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libminc2_simple,
        "lib/libminc2-simple.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
