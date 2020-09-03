#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
# These get added to PATH unprefixed via a ~/bin symlink
brew install findutils
# Install GNU `which`, g-prefixed then added to PATH unprefixed via ~/bin symlink
brew install gnu-which
# Install a modern version of Bash
brew install bash
brew tap homebrew/versions
# This needs to be added to your bash profile after installing
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries
brew install ack
brew install apm-bash-completion
brew install asciinema
brew install autojump
brew install bandcamp-dl
brew install bat
brew install brightness
brew install curl --with-c-ares --with-libmetalink --with-gssapi --with-libssh2
brew install darkhttpd
brew install dark-mode
brew install detox
brew install diff-so-fancy
brew install dos2unix
brew install ebook-tools
brew install enca
brew install exiftool
brew install faac
brew install ffmpeg --with-tools --with-fdk-aac --with-openssl --with-libvpx
brew install fish
brew install fzf
brew install gawk
brew install gifsicle
brew install git --with-persistent-https --with-pcre --with-brewed-openssl --with-gettext --with-brewed-curl
brew install git-annex
brew install git-delta
brew install git-extras
brew install git-lfs
brew install git-open
brew install git-recent
brew install gnu-units
brew install gnupg
brew install gti
brew install harfbuzz
brew install highlight
brew install hub
brew install imagemagick --with-webp
brew install ios-webkit-debug-proxy
brew install lame
brew install less
brew install lynx
brew install mrboom
brew install nginx
brew install node --without-npm
brew install open-completion
brew install openssl
brew install p7zip
brew install patchutils
brew install pigz
brew install pinentry-mac
brew install prettyping
brew install pv
brew install rename
brew install rhino
brew install rlwrap
brew install s3cmd
brew install shellcheck
brew install speedtest_cli
brew install ssh-copy-id
brew install sshfs
brew install testssl
brew install tig --with-docs
brew install tidy-html5
brew install tldr
brew install tree
brew install ucspi-tcp
brew install unar
brew install vbindiff
brew install webkit2png
brew install wifi-password
brew install wtf
brew install youtube-dl
brew install zopfli

# Remove outdated versions from the cellar
brew cleanup
