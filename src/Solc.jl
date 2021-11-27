module Solc

    """
        Solc 
    A Julia wrapper tool for the solc Solidity compiler.
    """
    
    using HTTP, JSON


    export 
    getOSname,
    getInstallableSolcVersions,
    installSolc,

    solcCompiler

    include("install.jl")
    include("compiler.jl")

    function __init__()

        nothing
    end

end
