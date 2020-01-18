# cargo-bay
a collection of rust commandline programs for aarch64 devboards. 

## what
i spend alot of time setting up devboards and then breaking them, and i can't do that on a bland terminal. and while aarch64-based devboards are the speed demons of the SoC universe, have you ever tried compiling a rust app on one natively? yeah. 

## install

### if you want rust 

you should have rustup installed, if not, 

`curl -sSf https://sh.rustup.rs | sh`

please check the code yourself before executing it!!! 

rustup will install rust and its package manager, cargo. more importantly it creates an important directory, ``.cargo``. 

clone this repo. navigate to the folder which has your desired cpu architecture: 

* `arm` - arm6 (rpi zero/w)
* `arm7` - arm7hf (rpi 2/3, orange pi zero etc)
* `aarch64` - arm64/aarch64 (64-bit rpi3b+, nanopi neo2, orangepi one plus and other boards with allwinner h5/h6)

copy the contents of the ``bin`` folder to `.cargo/bin`, and then move the `vivid` directory into your ``.config`` folder located in your home directory, ie, ~/. 

### skip rust, acquire programs

pretty much like the above except you'll manually create the bin, and add it to your path: 

`mkdir -p ~/.cargo/bin`

open up your shell's init file (bash: .bashrc, zsh: .zshrc, etc) and add the line:
`export PATH="$PATH:/home/$USER/.cargo/bin"`

reload with `exec bash` or `exec zsh` etc, and voila - any app you place in `.cargo/bin` will be executable system-wide.

## the goods 
so far: 

* bat - it's like cat but with coloring, syntax highlighting, a nice layout, etc. repo at sharkdp/bat 
* vivid - allows one to set awesome ls colors with little to no hassle, and manage the colors with themes. another sharkdp creation, check out sharkdp/vivid for the full install guide - you'll need to stick a line in your shell init script. 
* starship - a prompt theme along the lines of purepower, but with the functionality of liquidprompt - basically it's awesome. project at starship/starship 
* pastel - another whammy from sharkdp. this tool allows you to look up all the colors. like all of them. and you can play with them! you might find a nice shade and want it one, two, six shades darker - there's a command for that. compare shades, generate random colors for inspiration, you can even set up a colorpicker and use your mouse to select a point on your desktop, and `pastel` will tell you all about the color you select. project at sharkdp/bat

### contact 

feel free to reach out to me for any reason, maybe you'd like a little help, maybe you'd like to see more programs compiled for aarch64, maybe you're pissed at my lazy handling of a project you created - i'll help out best i can!
