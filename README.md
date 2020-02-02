# Arash's dotfiles

## Synopsis

Inspired by [Fardjad' dotfiles][1], this repository contains my no-frills
dotfiles for macOS and Linux.

It comes with an automated installer script and leverages homebrew to install
packages on macOS and various Linux distributions.

Config files are crafted for my own use and focus mostly on Web Development.

## What Are "dotfiles"?

> Dotfiles are used to customize your system. The "dotfiles" name is derived
> from the configuration files in Unix-like systems that start with a dot
> (e.g. `.bash_profile` and `.gitconfig`). For normal users, this indicates
> these are not regular documents, and by default are hidden in directory
> listings. For power users, however, they are a core tool belt.
> -- <cite>[Lars Kappert][2]</cite>

## Installation

The repository is tested on the latest version of [macOS HighSierra][3]
and [Manjaro][4] and [Ubuntu][12].

The following software packages are required to run the setup script.

| Dependency | Purpose                                                       |
| ---------- | ------------------------------------------------------------- |
| [git][5]   | Required for cloning this repository                          |
| [curl][6]  | Used for downloading files from the web                       |
| [bash][7]  | Required for running the installer script                     |
| [brew][8]  | Required for installing packages on macOS or Linux            |
| [sudo][9]  | Required by the installer script to run some commands as root |

In order to install the dotfiles run the following command in a bash shell:

```bash
git clone https://github.com/arashkhavari/dotfiles.git ~/.dotfiles && ~/.dotfiles/script/setup
```

## OS Specific Notes

- (Linux only) Check out [this gist][11] for more info on how to install
  homebrew on Manjaro.

- (Linux only) Install latest version of **vim** with **+clipboard** feature 
  enabled using your distro package manager (you can do so by running 
  `pacman -S gvim` on Arch/Manjaro).

- (macOS only, optional) In order to set macOS defaults run the following:

```bash
[ -d ~/.dotfiles ] && ~/.dotfiles/macos/setup-macos.sh || >&2 echo 'You must clone the repository first!'
```

- (macOS only, optional) Configure iTerm2 to load preferences from
  `~/.dotfiles/macos/iterm2` directory.

## License

[Creative Commons Attribution-NonCommercial 4.0 International License.][10]

[1]: https://github.com/fardjad/dotfiles
[2]: https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
[3]: https://en.wikipedia.org/wiki/MacOS_High_Sierra
[4]: https://manjaro.org
[5]: https://git-scm.com
[6]: https://curl.haxx.se
[7]: https://www.gnu.org/software/bash
[8]: https://brew.sh
[9]: https://www.sudo.ws
[10]: http://creativecommons.org/licenses/by-nc/4.0/
[11]: https://gist.github.com/114ebf50a0dd031418bb63b3b134db51
[12]: https://ubuntu.com
