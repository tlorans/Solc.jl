using HTTP

filename = "solc-macosx-amd64-v0.8.9+commit.e5eed63a"
OS = "macosx"

url = string("https://solc-bin.ethereum.org/",OS,"-amd64/",filename)

r = HTTP.request("GET", url)
HTTP.download(url, "test/")

run(`chmod a+x $(string("test/",filename))`)

cd("test")

run(`./$filename`);