using Solc
using JSON





getOSname()

# data = getInstallableSolcVersions()
# version = collect(keys(data))[1]

# filename = Dict(version => data[version])
# test = JSON.json(filename)

# test = JSON.json(data)


installSolc("latest")



BINARY_DOWNLOAD = string("https://solc-bin.ethereum.org/",OS,"-amd64/",filename)