# ===========================
# ==== Sys env variables ====
# ===========================

# Colorize terminal
eval `dircolors ~/.dir_colors`
alias ls="ls --color"

# Disable terminal freeze (ctrl-s)
stty -ixon

# Enhanced bash history
HISTFILESIZE=100000
HISTSIZE=100000
HISTCONTROL=ignoredups:erasedups
PROMPT_COMMAND='history -a'
HISTFILE=~/.bash_history_eternal
shopt -s histappend
shopt -s cmdhist


# Try starting byobu, if it's available.
if which byobu >/dev/null 2>&1 && [ -z "$BYOBU_BACKEND" ]; then
   byobu   
fi


# Set $term color scheme
export TERM=putty-256color

# Bash autocomplete setup
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# Set gcc / clang / python / make highlighting
#gcc() {
#  exec "$(which gcc)" "$@" |& ~/.highlight.sh
#}
#
#clang() {
#  exec "$(which clang)" "$@" |& ~/.highlight.sh
#}
#
#python() {
#  exec "$(which python)" "$@" |& ~/.highlight.sh
#}
#
#python3() {
#  exec "$(which python3)" "$@" |& ~/.highlight.sh
#}
#
#make() {
#  exec "$(which make)" "$@" |& ~/.highlight.sh
#}

# ===========================
# === LLVM env variables ==== 
# ===========================

export PATH=/home/bastoica/llvm39/build/bin:$PATH
#export PATH=$PATH:/home/bastoica/depot_tools:/home/bastoica/llvm-36-build/Release+Asserts/bin
#export PATH=/data/kishalay/llvm_data/bin:$PATH
#export CC=gcc
#export CXX=g++
#export CFLAGS="-pthread"
#export CPPFLAGS="-pthread"
#export CXXFLAGS="-pthread"
#export DS_LIB_PATH=/home/bastoica/llvm_build/Release+Asserts/lib/libLLVMDFlowProfiling.so
export DS_LIB_PATH=/home/bastoica/llvm-36-build/Release+Asserts/lib/libLLVMDFlowProfiling.so
export DS_LIB_DBG_PATH=/home/bastoica/llvm_build/Release+Asserts/lib/libLLVMDFlowProfilingDbg.so
export PP_LIB_PATH=/home/bastoica/llvm_build/Release+Asserts/lib/libLLVMCFlowProfiling.so
#source /home/bastoica/llvm_scripts/prepare_build_env.sh
#export CC=$(which clang)
#export CXX=$(which clang++)
#export CFLAGS=""
#export CXXFLAGS=""
#export CC="/data/llvm_bench/llvm_bugs/llvm_r212372-build/Release+Asserts/bin/ppclang"
#export CXX="/data/llvm_bench/llvm_bugs/llvm_r212372-build/Release+Asserts/bin/ppclang++"
#export PATH=/data/bogdan/dynslice/sqlite/sqlite-fuzz-build:$PATH
