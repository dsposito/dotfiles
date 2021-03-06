# Colorize ls.
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Ignore duplicate commands in bash history.
export HISTCONTROL=ignoredups

# Set Cask app dir.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Add current git branch to shell command line.
__git_ps1 ()
{
local b="$(git symbolic-ref HEAD 2>/dev/null)";
if [ -n "$b" ]; then
printf " (%s)" "${b##refs/heads/}";
fi
}

PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[35m\]\$(__git_ps1) \[\033[01;34m\]\$\[\033[00m\] "
