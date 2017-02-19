ulimit -s 65531

### vars
ip=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH
# can use jsc (js interpreter)
export PATH=$PATH:/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources

### Added by npm
export PATH="/usr/local/Cellar/node/5.7.0/bin:${PATH}"

export GEM_HOME=~/.gem
export GEM_PATH=~/.gem
export PATH=$PATH:~/.gem/bin/

### permanent aliases
alias mvim='mvim -v'
alias vim='nvim'
alias ll='ls -la'
alias cdwb='cd ~/Documents/websites/'

alias chromed='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=8080'

### temporary aliases
alias cdmasas='cd /Users/thomasbinetruy/Documents/mysite/'
alias cdfront='cd /Users/thomasbinetruy/Documents/mysite/static/js/'
alias cdmv='cd /Users/thomasbinetruy/Documents/mysite/ && nvim'

### export editor
export EDITOR='nvim'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/sbin:$PATH"

# OPAM configuration
. /Users/thomasbinetruy/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
