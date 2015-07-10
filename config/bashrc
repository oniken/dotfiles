[ -f ~/.fzf.bash ] && source ~/.fzf.bash


### Quora trick where cd ... goes up two directories

function cd () {
  local -ri n=${#*};
  if [ $n -eq 0 -o -d "${!n}" -o "${!n}" == "-" ]; then
    builtin cd "$@";
  else
    local e="s:\.\.\.:../..:g";
    builtin cd "${@:1:$n-1}" $(sed -e$e -e$e -e$e <<< "${!n}");
  fi
}
