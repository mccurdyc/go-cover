# go-cover
---
An example command to be used with [neighbor](https://github.com/mccurdyc/neighbor)
that collects coverage profiles.

**Just `go -coverprofile=$COVERPROFILE_FNAME`; nothing special**

## What `go-cover` actually does
1. get the path to your currently-installed `go` binary from `$which go`
2. backup your currently-install `go` to `go.bak` in the same location
3. move a custom-built `go` binary with `-coverprofile` always enabled in `go test`
   to the location of your original `go` binary
4. run `make test` on the project under test, which potentially creates multiple
   coverage profiles in many subdirectories of the project
5. collate coverage profiles into a single coverage profile at the root of the
   project under test
6. remove the custom `go` binary and move the original `go` binary back to its
   original location
