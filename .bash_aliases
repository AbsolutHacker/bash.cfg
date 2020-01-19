export WORKSPACE_ROOT=~/workspace
export WORKSPACE=${WORKSPACE_ROOT}/mib3/media/
export PRODUCT_DIR=${WORKSPACE_ROOT}/mib3/product/

export DEFAULT_HOSTNAME=audi
export EDITOR=/usr/bin/vim

alias ws="cd ${WORKSPACE_ROOT}"
alias wsp="cd ${WORKSPACE}"
alias gw='./gradlew'
alias bau='./gradlew goJF build'
alias gt='./gradlew tasks'
alias sav='pushd . >/dev/null'
alias ret='popd'

alias la='ls -lA --color=auto'
alias l='ls -lA --color=auto'
alias ic="${EDITOR} ~/.config/i3/config"

alias log='git log'
alias lol='git lol'
alias lola='git lola'
alias go='git checkout'
alias gf='git fetch'
alias gl='git pull'
alias stas='git stash'
alias comm='goJF && git commit -am'
alias amen='goJF && git commit --amend -a --date now --no-edit'
alias namen='git commit --amend -a --date now --no-edit'
alias rebi='git rebase -i'
alias reb='git rebase'

alias sau='sudo apt update'
alias saug='sudo apt upgrade'
alias sauug='sudo apt update && sudo apt upgrade'
alias sapi='sudo apt install'
alias aps='apt search'

alias pg='ps axu | grep'

alias vm='/usr/lib/virtualbox/VirtualBoxVM --comment win10-64bit --startvm aa51b4b9-8b3a-486d-8218-a37da74c3c23 --no-startvm-errormsgbox'

alias feierabend='off'
alias machzu='susp'
