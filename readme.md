# John Michel's dots

This has been heavily derived from [Mathias' dotfiles](https://github.com/mathiasbynens/dotfiles), with some additional customization from [Dan Herbert's old dotfiles](https://github.com/DanHerbert/dotfiles-old/).  The name comes from [Stephen Tudor's dots](https://github.com/smt/dots).

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dots`, with `~/dots` as a symlink.) The bootstrap script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/johnmichel/dots.git && cd dots && source bootstrap.sh
```

To update, `cd` into your local `dots` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd && curl -#L https://github.com/johnmichel/dots/tarball/main | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,LICENSE}
```

To update later on, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

Your `~/.extra` could look something like this:

```bash
# Git credentials
GIT_AUTHOR_NAME="Your Name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="yourname@users.noreply.github.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dots repository. It’s probably better to [fork this repository](https://github.com/johnmichel/dots/fork) instead, though.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
chmod +x .macos
./.macos
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after [installing Homebrew=(https://brew.sh/#install), of course):

```bash
chmod +x brew.sh
./brew.sh
```
