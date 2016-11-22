# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4
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

alias vi='vim'

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
alias grep='grep --color=auto'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func
LANG=C.eucKR
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
export PATH=${HOME}/crosstool/bin:${PATH}
export PS1='\[\033]0;\w\007
\033[32m\]\u\033[35m\]@\033[31m\]\h \[\033[33m\w\033[0m\]
$ '
