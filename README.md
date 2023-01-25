## smabbasht DotFiles

This is a repository I maintain for my personal use, in order to keep track of my dotfiles. It is super useful when I have to setup my tools on a new machine or in case I mess around with my OS (I use Arch btw! XD) and that cute thing takes it serious. <br>
I have curated a neat UI with natural keybindings and aliases, if you guys would want to setup your .config files for the tools mentioned below, you could give these files a try.

I use:

-   Kitty - as my GPU accelerated terminal emulator
-   Nvim - as my code editor, configured for python, flutter, C/C++, CUDA/OpenCL, LaTeX, Markdown with Copilot enabled
-   Fish - as my shell
-   Starship as my shell prompt
-   clang-format - as my code formatter
-   LaTeX - as my document editor

The dotfiles are organized in the following manner:

```bash
dotfiles
├── clang-format
│   └── .clang-format
├── fish
│   ├── config.fish
│   ├── fish_variables
│   └── functions
│       ├── amake.fish
│       ├── chrX.fish
│       ├── cm.fish
│       ├── con.fish
│       ├── Data.fish
│       ├── e.fish
│       ├── emulator.fish
│       ├── gtop.fish
│       ├── ins.fish
│       ├── ls.fish
│       ├── qp.fish
│       ├── qr.fish
│       ├── qs.fish
│       ├── rng.fish
│       ├── Softwares.fish
│       └── tmls.fish
├── kitty
│   └── kitty.conf
├── latex
│   └── template.tex
├── nvim
│   ├── init.lua
│   └── plugin
│       └── packer_compiled.lua
├── README.md
└── starship.toml
```

> All config files and folders are for Linux and I haven't tested them for windows, macOS or other proprietary operating systems so please edit the OS specific sections if you desire to use them
