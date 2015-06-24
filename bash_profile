export JAVA_HOME=$(/usr/libexec/java_home)
export JDK_HOME=$(/usr/libexec/java_home)
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#Colorize ls output
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PS1='\w\$ '  # Note ' quotes rather than " quotes
#Alias definitions are imported from ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

function cd () {
  local -ri n=${#*};
  if [ $n -eq 0 -o -d "${!n}" -o "${!n}" == "-" ]; then
    builtin cd "$@";
  else
    local e="s:\.\.\.:../..:g";
    builtin cd "${@:1:$n-1}" $(sed -e$e -e$e -e$e <<< "${!n}");
  fi
}
