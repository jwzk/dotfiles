### FUNCTIONS ###
## ALIAS ##
## USEFUL ##
alias my-ip="curl https://ipinfo.io/json; echo"
alias info-ip="getInfoFromIP"


## ALIAS FUNCTIONS ###
alias git-sp="speedPush"
alias git-sp-n="speedPushN"
alias drm="dockerRemoveAll"
alias drm-c="dockerRemoveContainers"
alias drm-v="dockerRemoveVolumes"


## FUNCTIONS ##
speedPush() {
    git add .
    git commit --amend --no-edit
    git push -f
}

speedPushN() {
    git add .
    git commit --amend --no-edit -n
    git push -f --no-verify
}

dockerRemoveAll() {
    dockerRemoveContainers
    dockerRemoveVolumes
}

dockerRemoveContainers() {
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
}

dockerRemoveVolumes() {
    docker volume rm $(docker volume ls -q)
}

getInfoFromIP() {
    ((!$#)) && echo Please provide an IP address && return
    curl https://ipinfo.io/$1/json; echo
}

ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

source $ZSH/oh-my-zsh.sh

