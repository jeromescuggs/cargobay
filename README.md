# cargo-bay
a collection of rust commandline programs for aarch64 devboards. 

## what
i spend alot of time setting up devboards and then breaking them, and i can't do that on a bland terminal. and while aarch64-based devboards are the speed demons of the SoC universe, have you ever tried compiling a rust app on one natively? yeah. 

## install
you should have rustup installed, if not, 

`url -sSf https://sh.rustup.rs | sh`

please check the code yourself before executing it!!! 

rustup will install rust and its package manager, cargo. more important it creates an important directory, ``cargo``. 

clone this repo. copy the contents of the ``bin`` folder to .cargo/bin, and then move the 'vivid' directory into your ``.config`` folder located in your home directory, ie, ~/. 

## the goods 
so far: 

* bat - it's like cat but with coloring, syntax highlighting, a nice layout, etc. repo at sharkdp/bat 
* vivid - allows one to set awesome ls colors with little to no hassle, and manage the colors with themes. another sharkdp creation, check out sharkdp/vivid for the full install guide - you'll need to stick a line in your shell init script. 
* starship - a prompt theme along the lines of purepower, but with the functionality of liquidprompt - basically it's awesome. project at starship/starship 

### contact 

feel free to reach out to me for any reason, maybe you'd like a little help, maybe you'd like to see more programs compiled for aarch64, maybe you're pissed at my lazy handling of a project you created - i'll help out best i can!
