# FAQ
---

## Can I download a binary release of `mccurdyc/go` to use with `go-cover`?
Yes, you can download a binary release [here](), but keep in mind that the `src/all.bash`
script does some environment variable setting under the hood based on the environment
in which Go was build from source. Therefore, you may have set some environment
variables and still may run into issue. If you can, I strongly suggest building
`mccurdyc/go` from source rather than installing the binary.

If you build `mccurdyc/go` from source and run into issues, please, [open an issue](https://github.com/mccurdyc/go-cover/issues/new)
in the `mccurdyc/go-cover` repository. If you run into an issue while using the
release version, you may still open an issue and I will attempt to help you solve
the issue, but it will most likely be dependent on your environment. Therefore, please
include as much information as possible about your environment when you open the issue.

## I don't have `sudo` access, can I still use `go-cover`?
Yes, you can try using a [release version](https://github.com/mccurdyc/go/releases)
of `mccurdyc/go`, you will need to make sure to set your `PATH` appropriately. This
is outlined in the [`go-cover` README](https://github.com/mccurdyc/go-cover).
