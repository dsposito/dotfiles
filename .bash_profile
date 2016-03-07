# Add `~/bin` to the `$PATH` to make composer globally accessible.
export PATH="$HOME/bin:$PATH"

# Add ~/.composer/vendor/bin to the `$PATH` to make composer vendor packages globally accessible (e.g. Lumen installer).
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Make the `homestead` command (for vagrant commands) globally accessible.
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

