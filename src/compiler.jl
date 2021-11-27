
function solcCompiler()

    # getVersion = `./solcv/solc-macosx-amd64-v0.8.9+commit.e5eed63a solc --version`
    runCommand = `./solcv/solc-macosx-amd64-v0.8.9+commit.e5eed63a solc --help`
    run(runCommand)
end