# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.aliases

# z: https://github.com/rupa/z
source /Users/zongheng/dotfiles/z/z.sh

# disable autosetting terminal title (thus compatible with tmux)
export DISABLE_AUTO_TITLE="true"

# JAVA_HOME
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home"
# export JAVA_TOOL_OPTIONS="-Dfile.encoding=utf8"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"

# export SPARK_HOME="/Users/zongheng/amplab/apache-spark-fork/"
# SparkR development
# export R_LIBS_USER=/Users/zongheng/amplab/SparkR/R/lib

# mkdir and cd into it
mcd () { mkdir -p "$@" && cd "$@"; }

# Zsh hack: ring a bell after a running command ends (useful to track e.g. compilation progress)
function highlight_precmd {
  echo -ne '\a'
}
add-zsh-hook precmd highlight_precmd

################## PATH ###############

# Ugly hack to make a tool (forgot what) run in a desired version
# export PATH="/usr/local/bin:$PATH"

# Ruby rbenv
# export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
# eval "$(rbenv init -)"

# scala
# export PATH="/Users/zongheng/scala-2.9.2/bin:$PATH"
#export PATH="/Users/zongheng/scala-2.10.1/bin:$PATH"

# CS164: horn
# export PATH="/Users/zongheng/Dropbox/College/Sophomore/fall13/CS164/horn/bin:$PATH"

# Use bison 2.7 and flex 2.5.37 (newer versions) installed by homebrew
# export PATH="/usr/local/Cellar/bison/2.7/bin:$PATH"
# export PATH="/usr/local/Cellar/flex/2.5.37/bin:$PATH"

export PATH=$HOME/bin:$PATH

# Ant
# export PATH=/Users/zongheng/apache-ant-1.9.3/bin:$PATH

# Maven
# export M2_HOME="/Users/zongheng/apache-maven-3.1.1"
# export M2="$M2_HOME/bin"
# export PATH="$M2:$PATH"

export HADOOP_HOME="/Users/zongheng/hadoop-1.0.4"
# export HIVE_HOME="/Users/zongheng/apache-hive-0.13.1-src/packaging/target/apache-hive-0.13.1-bin/apache-hive-0.13.1-bin"
# export HIVE_DEV_HOME="/Users/zongheng/apache-hive-0.13.1-src/packaging/target/apache-hive-0.13.1-bin/apache-hive-0.13.1-bin"
export HIVE_HOME="/Users/zongheng/hive-0.12.0/src/build/dist"
export HIVE_DEV_HOME="/Users/zongheng/hive-0.12.0/src"
export PATH=$HADOOP_HOME/bin:$HIVE_HOME/bin:$PATH
