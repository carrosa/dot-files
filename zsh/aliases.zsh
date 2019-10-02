alias vim="nvim"

alias python="python3"
alias python2="python2.7"
alias pip="pip3"
alias pip2="pip2"
alias docker_clean_all='docker rmi -f $(docker images -a -q) && docker rm $(docker ps -a) -f'
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
