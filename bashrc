# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
	local SEARCH=' '
	local REPLACE='%20'
	local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
	printf '\e]7;%s\a' "$PWD_URL"
    }
    PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi
								    
alias ls='ls -G'
alias la='ls -Ga'
alias ll='ls -Gl'
alias sshy='ssh y17405@logex00.educ.cc.keio.ac.jp'
alias sshk='ssh sakuma@kerberos.sslab.ics.keio.ac.jp'
alias sshv='ssh root@192.168.23.70'
alias sshe='ssh root@192.168.23.228'
alias cdweb='cd /Library/WebServer/Documents/'
export HISTCONTROL=ignoredupsy

function share_history {
	 history -a
	 history -c
	 history -r
}

PROMPT_COMMAND='share_history'

export PATH=$PATH:/usr/local/mysql/support-files/
export PATH=$PATH:/usr/local/mysql/bin/
