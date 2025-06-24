# envi
Single-use envs for various purposes

## Usage

Repository contains some Dockerfiles that you can build with

    make build

to get some demo envs.

Then, you need to symlink your favorite command to `envi`, which will then
spawn temporary containers with simple logic - please see source for now.

Eg.

    ln -s envi cargo

and when you execute `cargo`, you pretty much get cargo running in

    envi.ypcs.fi/cargo:latest

container with current working directory etc. mounted.
