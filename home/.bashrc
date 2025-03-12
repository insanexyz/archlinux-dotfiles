##---- Startup ----##
if command -v pyjokes &>/dev/null; then
    cowsay -f satanic $(pyjokes) | lolcat
fi

#fastfetch -c neofetch


##---- Default Stuff ----##
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W][\$] \n~> '

# show git status in prompt
function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}
# set pronpt style
PS1='[\u@\h \W]$(parse_git_branch)\[\][💀]\n ✘  '

force_color_prompt=yes



##---- Pywall ----##

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh




##---- Aliases -----##

# dwm
alias startdwm="startx ~/.dwmxinitrc"

# git bare repository
alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# useful commands shortener
alias ..="cd .."
alias ll="ls -la"

# all purpose python virtual env
alias insaneENV="source /home/insane/.virtualenvs/InsanePythonEnv/bin/activate"
alias stableDiffEnv="source /home/insane/.virtualenvs/StableDiffEnv/bin/activate"
alias oobaboogaVirtualEnv="source /home/insane/.virtualenvs/oobaboogaVirtualEnv/bin/activate"

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias anaconda-navigator="prime-run anaconda-navigator"

##---- Export ----##
export EDITOR=vim


##---- Environment Variables ----##

# path
export PATH="$PATH:/home/insane/.dotnet/tools/:/home/insane/.local/bin/:/home/insane/.local/scripts/:/usr/lib/rstudio:"
#export python_cmd="python3.11"
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __GLX_VENDOR_LIBRARY_NAME=nvidia
export XDG_CONFIG_HOME="$HOME/.config"




# python modules
export PYTHONPATH=$PYTHONPATH:/home/insane/.insane/PythonCustomModules:/home/insane/.virtualenvs/InsanePythonEnv/lib/python3.12/site-packages


##---- Useful commands ----##

# Prevent overwrites with >
set -o noclobber

# shopt
shopt -s nullglob globstar


#---- Zoxoide (to be at end) -----#
eval "$(zoxide init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/insane/Main/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/insane/Main/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/insane/Main/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/insane/Main/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
