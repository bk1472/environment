# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi



LS_COLORS=''

LS_COLORS=$LS_COLORS:'no=0' # Normal text
LS_COLORS=$LS_COLORS:'fi=0' # Regular file
LS_COLORS=$LS_COLORS:'di=33' # Directory
LS_COLORS=$LS_COLORS:'ln=01;36' # Symbolic link
LS_COLORS=$LS_COLORS:'pi=33' # Named pipe
LS_COLORS=$LS_COLORS:'so=01;35' # Socket
LS_COLORS=$LS_COLORS:'do=01;35' # DO
LS_COLORS=$LS_COLORS:'bd=01;37' # Block device
LS_COLORS=$LS_COLORS:'cd=01;37' # Character device
LS_COLORS=$LS_COLORS:'ex=35' # Executable file
LS_COLORS=$LS_COLORS:'*FAQ=31;7' # FAQs
LS_COLORS=$LS_COLORS:'*README=31;7' # READMEs
LS_COLORS=$LS_COLORS:'*INSTALL=31;7' # INSTALLs
LS_COLORS=$LS_COLORS:'*.sh=47;31' # Shell-Scripts
LS_COLORS=$LS_COLORS:'*.vim=35' # Vim-"Scripts"
LS_COLORS=$LS_COLORS:'*.swp=00;44;37' # Swapfiles (Vim)
LS_COLORS=$LS_COLORS:'*.sl=30;33' # Slang-Scripts
LS_COLORS=$LS_COLORS:'*,v=5;34;93' # Versioncontrols
LS_COLORS=$LS_COLORS:'or=01;05;31' # Orphaned link
LS_COLORS=$LS_COLORS:'*.c=33' # Sources
LS_COLORS=$LS_COLORS:'*.C=33' # Sources
LS_COLORS=$LS_COLORS:'*.h=33' # Sources
LS_COLORS=$LS_COLORS:'*.cc=33' # Sources
LS_COLORS=$LS_COLORS:'*.py=33' # Sources
LS_COLORS=$LS_COLORS:'*.rb=33' # Sources
LS_COLORS=$LS_COLORS:'*.awk=33' # Sources
LS_COLORS=$LS_COLORS:'*.pl=33' # Sources
LS_COLORS=$LS_COLORS:'*.jpg=0;32' # Images
LS_COLORS=$LS_COLORS:'*.jpeg=0;32' # Images
LS_COLORS=$LS_COLORS:'*.JPG=0;32' # Images
LS_COLORS=$LS_COLORS:'*.gif=0;32' # Images
LS_COLORS=$LS_COLORS:'*.png=0;32' # Images
LS_COLORS=$LS_COLORS:'*.jpeg=0;32' # Images
LS_COLORS=$LS_COLORS:'*.ppm=0;32' # Images
LS_COLORS=$LS_COLORS:'*.pgm=0;32' # Images
LS_COLORS=$LS_COLORS:'*.pbm=0;32' # Images
LS_COLORS=$LS_COLORS:'*.tar=35' # Archive
LS_COLORS=$LS_COLORS:'*.tgz=35' # Archive
LS_COLORS=$LS_COLORS:'*.gz=35' # Archive
LS_COLORS=$LS_COLORS:'*.zip=35' # Archive
LS_COLORS=$LS_COLORS:'*.sit=35' # Archive
LS_COLORS=$LS_COLORS:'*.lha=35' # Archive
LS_COLORS=$LS_COLORS:'*.lzh=35' # Archive
LS_COLORS=$LS_COLORS:'*.rar=35' # Archive
LS_COLORS=$LS_COLORS:'*.arj=35' # Archive
LS_COLORS=$LS_COLORS:'*.bz2=35' # Archive
LS_COLORS=$LS_COLORS:'*.avi=35' # Video
LS_COLORS=$LS_COLORS:'*.mpg=35' # Video
LS_COLORS=$LS_COLORS:'*.mpeg=35' # Video
LS_COLORS=$LS_COLORS:'*.divx=35' # Video
LS_COLORS=$LS_COLORS:'*.xvid=35' # Video
LS_COLORS=$LS_COLORS:'*.mov=35' # Video
LS_COLORS=$LS_COLORS:'*.mp4=35' # Video
LS_COLORS=$LS_COLORS:'*.m4v=35' # Video
LS_COLORS=$LS_COLORS:'*.wmv=35' # VIdeo
LS_COLORS=$LS_COLORS:'*.mp3=37' # Audio
LS_COLORS=$LS_COLORS:'*.ogg=37' # Audio
LS_COLORS=$LS_COLORS:'*.wav=37' # Audio
LS_COLORS=$LS_COLORS:'*.html=36' # HTML
LS_COLORS=$LS_COLORS:'*.php=01;36' # PHP
LS_COLORS=$LS_COLORS:'*.inc=01;36' # inc
LS_COLORS=$LS_COLORS:'*.css=0;33' # CSS
LS_COLORS=$LS_COLORS:'*.js=0;33' # JAVASCRIPT
LS_COLORS=$LS_COLORS:'*.as=1;34' # Actionscript
LS_COLORS=$LS_COLORS:'*.asc=1;34' # Actionscript
LS_COLORS=$LS_COLORS:'*.txt=1;34' # Plain/Text
LS_COLORS=$LS_COLORS:'*.o=1;36' # Object-Files
LS_COLORS=$LS_COLORS:'*.a=1;36' # Shared-libs
export LS_COLORS


export PS1='\[\033]0;\w\007
\033[32m\]\u\033[35m\]{\!}@\033[31m\]\h \[\033[33m\w\033[0m\]
$ '
