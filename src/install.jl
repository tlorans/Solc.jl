# This file contains functions to install solc.js with NodeJS.



# SOURCE_DOWNLOAD_BASE = "https://github.com/ethereum/solidity/releases/download/v{}/{}"
# GITHUB_RELEASES = "https://api.github.com/repos/ethereum/solidity/releases?per_page=100"

# SOLCX_BINARY_PATH_VARIABLE = "SOLCX_BINARY_PATH"

"""
    function getOSname()
This function returns the OS name for the user.
"""
function getOSname()

    if Sys.iswindows()
        OS = "win32"
    elseif Sys.islinux()
        OS = "linux"
    elseif Sys.isapple()
        OS = "macosx"
    else 
        println("OS not recognized")
    end

    return OS
end

"""
    function getInstallableSolcVersions()

Return a list of all solc versions that can be installed by Solc.jl.

It is the equivalent au get_installable_solc_version() in py-solc-x.
"""
function getInstallableSolcVersions()

    OS = getOSname()
    BINARY_DOWNLOAD_BASE = string("https://solc-bin.ethereum.org/",OS,"-amd64/list.json")
    r = HTTP.request("GET", BINARY_DOWNLOAD_BASE)
    str = (String(r.body))

    listVersions = sort(JSON.Parser.parse(str)["releases"], rev = true)

    return listVersions
end


"""
    function installSolc()
Download and install a precompiled version of solc.
"""
function installSolc(version::String)

    data = getInstallableSolcVersions()

    if version == "latest"
        version = collect(keys(data))[1]
    end

    OS = getOSname()


    filename = data[version]

    url = string("https://solc-bin.ethereum.org/",OS,"-amd64/",filename)
    
    content = downloadSolc(url)

end


"""
    function downloadSolc()
This function download the solidity compiler version.
"""
function downloadSolc(url::String)
    
    r = HTTP.request("GET", url)
    HTTP.download(url, "test/")
    println(r.status)
end


"""
    function installSolcUnix()
Installator for Unix system.
"""
function installSolcUnix(version::String, filename::String)

    download = "dd"

end