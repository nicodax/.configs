# EOU
alias cls="clear"

# CONFIGURATION
alias aliases="vim $HOME/.oh-my-zsh/custom/aliases.zsh"
alias rc="vim $HOME/.zshrc"
alias src="source $HOME/.zshrc"

# APT & SNAP
alias aptuu="sudo apt update && sudo apt upgrade"
alias snapr="sudo snap refresh"
alias snaptuu="sudo apt update && sudo apt upgrade && sudo snap refresh"
alias apti="sudo apt install"
alias snapi="sudo snap install"
alias apts="sudo apt-cache search"
alias aptr="sudo apt remove"
alias snaprm="sudo snap remove"

# GIT
alias gcmt="git commit -m"
alias gpsh="git push"
alias gst="git status"
alias glog="git log --graph --oneline --all"
alias gco="git checkout"
alias grb="git rebase"
alias grbi="git rebase -i"
alias gcp="git cherry-pick"
alias gbd="git branch -D"
alias gbm="gitbranch -M"

# DOCKER
alias dcu="docker compose up -d --build"
alias dcd="docker compose down"

alias dps="docker ps -a"
alias dstp="docker stop"
alias drm="docker rm"

alias dl="docker logs --follow"
alias dex="docker exec -it"

alias dils="docker image ls"
alias dirm="docker image rm"

alias dvls="docker volume ls"
alias dvrm="docker volume rm"

alias dprune="docker system prune -a --volumes"

# TOMB
alias tocd="tomb open -k $HOME/.wallpapers/wallpaper.jpeg $HOME/.tomb && cd /media/.tomb"
