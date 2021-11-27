# This file contains the low-level process wrapper for the solidity compiler

"""
    function solcWrapper()
Wrapper function for calling to solc.

# Arguments 
- solc_binary: Location of the `solc` binary. If not given, the current default binary is used.
- stdin: Input to pass to `solc` via stdin.
- source_files: Path, or list of paths, of sources to compole.

"""
function solcWrapper(solc_binary::String, 
                    stdin::String,
                    source_files::Union{Vector, String})

    
end
