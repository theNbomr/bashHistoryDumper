# bashHistoryDumper
bash configs and tools for managing discrete time-date-PID history logs

Compatible with bash history settings ($HOME/.bashrc):
```
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE=${HOME}/bash_history/.bash_history_$(date "+%Y-%m-%d_%H:%M:%S")_$$.log
HISTTIMEFORMAT="%s [ %c ]"
```
