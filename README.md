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
HISTFILE=${HOME}/.bash_history/bash_history_$(date "+%Y-%m-%d_%H:%M:%S")_$$.log
HISTTIMEFORMAT="%s [ %c ]"
```
## Notice
The use of **.bash_history** as a directory name may conflict with existing tools. Beware. The *hidump* script doesn't rely on any particualr filename format. The use of discrete bash history files is coincidental to the function of *hidump.sh*

Use on the commandline:
```
for bh in .bash_history/bash_history_2025-04-20_*; do echo; echo $bh; hidump $bh; done
```
output:
```
.bash_history/bash_history_2025-04-20_14:56:38_353.log
Sun 20 Apr 2025 02:56:46 PM PDT echo $HISTFILE
Sun 20 Apr 2025 02:57:04 PM PDT ps -e lf
Sun 20 Apr 2025 02:57:26 PM PDT echo $OID
Sun 20 Apr 2025 02:57:32 PM PDT echo $PID
Sun 20 Apr 2025 02:57:41 PM PDT echo $$
Sun 20 Apr 2025 02:57:52 PM PDT echo $HISTFILE
Sun 20 Apr 2025 02:58:04 PM PDT dir .bash_history/
Sun 20 Apr 2025 02:58:19 PM PDT exit

.bash_history/bash_history_2025-04-20_15:01:37_737.log
Sun 20 Apr 2025 03:02:25 PM PDT vi .bashrc
Sun 20 Apr 2025 03:04:51 PM PDT exit
```
