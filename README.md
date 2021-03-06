# DEPRECATED!

**currently re-structuring this project over at [cargo-bay]. this repo is here for archival purposes only.**

[cargo-bay]: https://github.com/jeromescuggs/cargo-bay

## cargo-bay
a collection of rust commandline programs for aarch64 devboards. 

## what
`cargo-bay` is a collection of rust binaries which will sped up your initial setup by providing some common tools. the selection here is purely personal, and might be missing something or contain things you might not personally use. 

## install

### quick

if you already have `cargo` via `rustup`, simply run navigate to the local copy of this repo and run `./bootstrap`. the install file will look for the appropriate binaries for your CPU, and if found, will then populate the appropriate submodule. 

navigate to the submodule and find the `install.sh` script there, run it to automatically copy the binaries and config settings to their appropriate locations (set to the defaults in `~/.cargo/bin` and `.config`. 

### if you want rust 

you should have rustup installed, if not, 

`curl -sSf https://sh.rustup.rs | sh`

please check the code yourself before executing it!!! 

rustup will install rust and its package manager, cargo. more importantly it creates an important directory, ``.cargo``. 

clone this repo. navigate to the folder which has your desired cpu architecture: 

* `arm` - arm6 (rpi zero/w) **WIP** - to compile for the arm6l architecture i'll have to learn how to set up a toolchain manually, so hold tight!
* `armv7l` - arm7hf (rpi 2/3, orange pi zero etc)
* `aarch64` - arm64/aarch64 (64-bit rpi3b+, nanopi neo2, orangepi one plus and other boards with allwinner h5/h6)
* `x86_64` - x86 (64-bit) (pretty much any desktop, if you're not sure what architecture you're using, it is probably this one)

copy the contents of the ``bin`` folder to `.cargo/bin`, and then move the `vivid` directory into your ``.config`` folder located in your home directory, ie, ~/. 

### skip rust, acquire programs

pretty much like the above except you'll manually create the bin, and add it to your path: 

`mkdir -p ~/.cargo/bin`

open up your shell's init file (bash: .bashrc, zsh: .zshrc, etc) and add the line:
`export PATH="$PATH:/home/$USER/.cargo/bin"`

reload with `exec bash` or `exec zsh` etc, and voila - any app you place in `.cargo/bin` will be executable system-wide.

### (optional) setup aliases for your ls replacement

if you wind up wanting to use `exa` or `lsd` or even both, i have uploaded a copy of my own alias file in the root folder, the file is called `.exa-ls`. to use it, copy it into your home directory and add the following to your `.zshrc` or `.bashrc`:

`source /home/$USER/.exa-ls`

## the goods 
this is not exhaustive - some architectures might be missing some of these, or might even have some i have yet to list. 

so far: 

* [exa] - a replacement for ls that adds alot more color, and alot more options. 
* bat - it's like cat but with coloring, syntax highlighting, a nice layout, etc. repo at sharkdp/bat 
* [vivid] - allows one to set awesome ls colors with little to no hassle, and manage the colors with themes. another sharkdp creation, check out sharkdp/vivid for the full install guide - you'll need to stick a line in your shell init script. 
* starship - a prompt theme along the lines of purepower, but with the functionality of liquidprompt - basically it's awesome. project at starship/starship 
* pastel - another whammy from sharkdp. this tool allows you to look up all the colors. like all of them. and you can play with them! you might find a nice shade and want it one, two, six shades darker - there's a command for that. compare shades, generate random colors for inspiration, you can even set up a colorpicker and use your mouse to select a point on your desktop, and `pastel` will tell you all about the color you select. project at sharkdp/bat
* [broot] - a new tool that is a mashup of `ls`, `tree` with features reminiscent of programs like `nnn`. somewhat tricky to explain, for more information i suggest checking out the repo over at Canop/broot. 

### contact 

feel free to reach out to me for any reason, maybe you'd like a little help, maybe you'd like to see more programs compiled for aarch64, maybe you're pissed at my lazy handling of a project you created - i'll help out best i can!

[exa]: https://github.com/ogham/exa
[broot]: https://github.com/canop/broot
[vivid]: https://github.com/sharkdp/vivid
