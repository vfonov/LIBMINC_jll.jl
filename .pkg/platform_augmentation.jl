    using Base.BinaryPlatforms

    try
        using MPIPreferences
    catch
        # MPIPreferences not yet available
    end

    function augment_platform!(platform::Platform)
        haskey(platform, "mpi") && return platform
        if @isdefined(MPIPreferences)
            platform["mpi"] = MPIPreferences.abi
        else
            platform["mpi"] = "mpitrampoline"
        end
        return platform
    end
