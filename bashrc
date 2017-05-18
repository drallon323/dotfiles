##### Copy the following lines into .bash_profile to have these settings loaded
# if [ -f ~/.bashrc ]; then
#    source ~/.bashrc
# fi

alias b="bundle"
alias be="bundle exec"
alias bi="bundle install --path vendor"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"



alias sshdev="ssh alan@107.170.57.74"
