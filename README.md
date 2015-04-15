# Yet another emacs setup

This is my current emacs setup.

It came into existence when I grew tired of not fully understanding everything behind the excellent [Prelude](https://github.com/bbatsov/prelude) setup.

## Installation

These instruction assumes that you are using Homebrew and a Mac.

**WARNING**: Running this as is will overwrite your previous configurations found in ~/.emacs.d/

    brew install emacs --with-cocoa
    brew linkapps emacs
    brew install cask
    git clone git@github.com:vroy/emacs-config.git ~/.emacs.d/
    cd ~/.emacs.d/
    cask


## Contributing

Fork it ( https://github.com/vroy/emacs-config/fork )
Create your feature branch (git checkout -b my-new-feature)
Commit your changes (git commit -am 'Add some feature')
Push to the branch (git push origin my-new-feature)
Create a new Pull Request
