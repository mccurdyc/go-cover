# go-cover
---

An example command to be used with [neighbor](https://github.com/mccurdyc/neighbor)
that requests and collates coverage profiles from all packages under test.

Use go-cover as an example project for modifying Go source and performing an analysis
on a project.

## Getting Started
1. [Ensure you have a working Go environment](https://golang.org/doc/install)
2. "Clone" `go-cover`
    ```bash
    cd $GOPATH
    go get -u github.com/mccurdyc/go-cover/cmd/go-cover
    ```
3. Install `go-cover`
    ```bash
    cd $GOPATH/src/github.com/mccurdyc/go-cover
    make install
    ```
4. Clone the [`mccurdyc/go`](https://github.com/mccurdyc/go) fork of the Go
  project. This contains the source code for Go, with a modification to always enable
  the `-coverprofile` flag during `go test`.

    ```bash
    git clone https://github.com/mccurdyc/go.git $HOME/go-cover-src
    ```
5. Build the Go binary with the flag enabled.
    ```bash
    cd $HOME/go-cover-src/src
    sudo ./all.bash
    ```

  You can also reference ["Installing Go from source"](https://golang.org/doc/install/source#install)
  article on the official Go blog.

  This should build a `go` binary in `$HOME/go-cover-src/bin/`

6. Add the modified Go version's `bin/` to your `PATH` environment variable
  It is important that it is prepended versus appended. This ensures that the modified
  Go source directory is search first, leading to the discovery of the modified
  `go` binary.

    ```bash
    export PATH=$HOME/go-cover-src/bin:$PATH
    ```

  Listed below are two great references by [@davecheney](https://twitter.com/davecheney) and a StackOverflow post
  1. [How to install multiple versions of Go](https://dave.cheney.net/2014/09/13/how-to-install-multiple-versions)
  2. [You don’t need to set GOROOT, really](https://dave.cheney.net/2013/06/14/you-dont-need-to-set-goroot-really)
      > `$GOROOT` has always been defined as a pointer to the root of your Go installation...
      > When you compile Go from source, the value of $GOROOT is automatically discovered
      > (it is one directory up from the `all.bash` script).
  3. [How to correctly add a path to PATH?](https://unix.stackexchange.com/questions/26047/how-to-correctly-add-a-path-to-path)

## Usage
1. set `COVERPROFILE_FNAME` environment variable

    This is name is used for the collated coverage profile at the root of the external
    project directory.

## Questions?
Check out the [FAQ document](./docs/FAQ.md). If the answer to your question isn't
in the FAQ document, [open an issue](https://github.com/mccurdyc/go-cover/issues/new).

## License
+ [GNU General Public License Version 3](./LICENSE)
