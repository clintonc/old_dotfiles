if [ "`uname -n`" == "robin.local" ]; then
  # MacPorts path
  export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi
[[ $- == *i* ]]   &&   . ~/.bash/git-prompt.sh
