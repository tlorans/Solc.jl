module Solc

    """
        Solc 
    A Julia wrapper tool for the solc Solidity compiler.
    """
    
    using HTTP, JSON


    export 
    getOSname,
    getInstallableSolcVersions,
    installSolc

    include("install.jl")

    function __init__()

        nothing
    end

end
