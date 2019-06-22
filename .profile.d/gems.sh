# Ruby Gems Environment
GEM_HOME="$HOME/gems"

if [ -d "$GEM_HOME" ] ; then
    export GEM_HOME
    export PATH="$GEM_HOME/bin:$PATH"
fi
