path+=('/home/seth/.bin')
export PATH

alias rmr="rm -r"
alias cx="clear -x"

chvpn() {
  /home/seth/.bin/chavpn "$1" && source ~/.zshenv
}
